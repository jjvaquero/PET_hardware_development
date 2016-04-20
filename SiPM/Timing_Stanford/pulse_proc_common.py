# -*- coding: utf-8 -*-
"""
Created on Mon Oct 19 16:51:31 2015

@author: rigo
"""


#import all the needed libraries
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz
import bisect
from scipy.spatial import distance
from scipy.optimize import curve_fit
import h5py #not needed if I am using stored pulses 



# function used to keep only those events that are considered true coincidences
# cosidered as such those that are inside the fwhm
# recives as the input the list of all files to use 
# and a parameter to modify the width of the window of accepted events
def coincidenceDetect(fNames,interval = 0):
    ch3=[]
    ch4=[]
    for fileName in fNames: #later on do it for all data
        fData = h5py.File(fileName, 'r')
          
        #only data from the energy channels will be taken into account
        ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
        ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
        #integrating the energy signals works best
        fData.close()
     
    #TODO consider the option of adding some pulse processing before just moving on with the data   
    #now ch3 and ch4 have an energy value for each stored event
    #after checking at the values I could use a     
    histCh3 = np.histogram(ch3,512,[0,2048])
    histCh4 = np.histogram(ch4,512,[0,2048])
    
    maxEng3, minEng3 = energyBorders(histCh3[0])
    maxEng4, minEng4 = energyBorders(histCh4[0])
    
    #chX = list(ch3)
    #chY = list(ch4)
    #compensate for the compression used before
    #now prepare to remove unwanted events
    for i in range(len(fNames)):  #widened the margins so that more events could fit in
        #if (chX[i] > maxEng3*4.5 or chX[i] < minEng3*3.5 or chY[i] > maxEng4*4.5 or chY[i] < minEng4*3.5 ):
        if (ch3[i] > maxEng3*(4+interval) or ch3[i] < minEng3*(4-interval) \
        or ch4[i] > maxEng4*(4+interval) or ch4[i] < minEng4*(4-interval) ):
            #should probably use*3
            fNames[i] = 'rem'
            
    #remove the marked values
    for i in range(0,fNames.count('rem')):
        fNames.remove('rem')

#end of coincidenceDetect

# function to find the mean maximum value to later on use it for event detection
def getMaxMeanValue(chA,chB):
    maxVals = []
    #use the two channels as they should have similar signals
    for i in range(0,len(chA)):
        maxVals.append(chA[i].max())
        maxVals.append(chB[i].max())
        
    
    maxMean = np.mean(maxVals)
    maxMean-= maxMean/10
    
    return maxMean
# getMaxMeanValue function end

# function to find the mean maximum value to later on use it for event detection
def getMaxMeanValue1(chA,reduc):
    maxVals = []
    #use the two channels as they should have similar signals
    for i in range(0,len(chA)):
        maxVals.append(chA[i].max())        
    
    maxMean = np.mean(maxVals)
    maxMean-= maxMean/reduc
    
    return maxMean

# function used to get the index of the trhesholds for all events
def getThPos(chA,thValue):
    maxThPos = []
    for i in range(0,len(chA)): 
        thVal = thValue
        thPos = bisect.bisect(chA[i],thValue)       
        while (thPos >= len(chA[i])-100):
            thVal-=thVal/10
            thPos=bisect.bisect(chA[i],thVal)
        maxThPos.append(thPos)
   
    plt.plot(maxThPos)   
    return maxThPos
# getThPos function end
    
# function used to get the index of the trhesholds for all events
def getThPos1(chA):
    #find the mean maximum, to later find their positions

    thValue = getMaxMeanValue1(chA,10) #mean maximum - mean max/10
    
    #find the mean positiof these maximums    
    maxThPos = np.zeros(len(chA))
    for i in range(0,len(chA)): 
        thVal = thValue
        thPos = bisect.bisect(chA[i],thValue)    
        # max value is decreased if no maximum is found, there must at least be a crossing point
        while (thPos >= len(chA[i])-100):
            thVal-=thVal/10
            thPos=bisect.bisect(chA[i],thVal)
        maxThPos[i] = thPos
    
    #calculate the mean position
    meanThPos = np.mean(maxThPos)
    
    #recheck to make sure that the max values taken are not outside the "trust interval"
    # trust interval = mean - mean*(1-0.34) --- mean+mean*(1-0.34)
    leftMargin = round(meanThPos*1.2)
    rightMargin = round(meanThPos*0.8)
    for i in range(0, len(chA)):
        if (maxThPos[i]>leftMargin or maxThPos[i]< rightMargin):
            tmpArray = np.asarray(chA[i])
            thPos = leftMargin + bisect.bisect(tmpArray[leftMargin:rightMargin],thValue) 
            thVal = thValue
            while (thPos >= rightMargin-100 and thVal>thValue/2):
                thVal-=thVal/10
                thPos = leftMargin + bisect.bisect(tmpArray[leftMargin:rightMargin],thVal) 
            if thVal<thValue/2:
                plt.plot(tmpArray)
                maxThPos[i] = 0 #mark this values to not use them later on
                #TODO improve this to remove this value from the two time vectors
            else:
                maxThPos[i] = thPos
    
    return maxThPos
# getThPos1 function end
    

# function used to get the leading edge trigger time
# in this case i will aproximate the data to two lines and find their intersection
def findEdgeTimes1(chA, slopeProp=10, nCurveVals=15):
  
  
    maxThPosArray = getThPos1(chA)
    tEdgeTimes= np.zeros(len(chA))
    
    for i in range(0,len(chA)):
        mEvent = np.asarray(chA[i])
        eventTh = maxThPosArray[i]
        if eventTh > 0: #events with problems have been marked with a 0
            initSlope = np.mean([(mEvent[eventTh]-mEvent[eventTh-1]),(mEvent[eventTh-1]-mEvent[eventTh-2])])
            slope = initSlope
            #slopeProportion = 20 #change this value to get only the actual slope    
            currInd = eventTh
            while((slope > initSlope/slopeProp) and ((eventTh-currInd)<30)):
                currInd=currInd-1
                slope = np.mean([(mEvent[currInd]-mEvent[currInd-1]),(mEvent[currInd-1]-mEvent[currInd-2])])
    
            #dont take measurements for values outside of the range
    
            
            leftC = currInd # take three more samples
            rightC = eventTh # dont take more on this side as i dont care about the upper side of the curve
            #to have a time vector in nanoseconds
                
            #time vector needed for the curve fitting part
            t=np.linspace(0,len(chA[1])*0.05,len(chA[1])) #sampling time 50 ps
            
            #use a polynomial fit
            x1 = np.linspace(t[leftC],t[rightC],rightC-leftC)
            y1 = mEvent[leftC:rightC]
            #fAux = np.polyfit(x,y,3)
            # try using a smaller order polynomial for the curve
            fAux1 = np.polyfit(x1,y1,1)
            fInterp = np.poly1d(fAux1)
            # extrapolate new values
            #xEdge = np.linspace(t[leftC-nCurveVals/2],t[rightC],100)
            xEdge = np.linspace(t[leftC-nCurveVals],t[leftC+nCurveVals],round(nCurveVals*2)*10)
            yEdge = fInterp(xEdge)  
            
            #repeat the process for the values in the baseline
            rightB = currInd - nCurveVals #start after the end of the curve to make sure I get the baseline
             # the value to use will be fixed
            leftB = rightB - (rightC-leftC)*2 # take two times more values than on the edge
            #now use curve fitting and extroplation again
            x = np.linspace(t[leftB],t[rightB],rightB-leftB)
            y = mEvent[leftB:rightB]
            #fAux = np.polyfit(x,y,3)
            # try using a smaller order polynomial for the curve
            fAux = np.polyfit(x,y,1)
            fInterp = np.poly1d(fAux)      
            # extrapolate new values
            #xBase = np.linspace(t[leftB-nCurveVals],t[rightC+nCurveVals],100) # make sure they intersect
            xBase = np.linspace(t[rightB],t[leftC+nCurveVals],round(nCurveVals*2)*10) # make sure they intersect
            yBase = fInterp(xBase)  
            
            #now I just need to find the intersection
            minDist = 100
            thValX = 0
            thValY = 0
            #TODO esto sera lento de cojones...buscar como darles la misma longitud y empezar de atras a alante
            #i can now solve the two lines....a lo gita king
            
            """"
            for j in range(0,len(yEdge)):
                for k in range(0,len(yBase)):
                    #calculo la distancia
                    dist = distance.euclidean([xBase[k],yBase[k]],[xEdge[j],yEdge[j]])
                    #dist = np.sqrt(np.power((xBase[k]-xEdge[j]),2)+np.power(yBase[k]-yEdge[j],2))
                    if dist<minDist:
                        minDist = dist
                        thValX = (xEdge[j]+xBase[k])/2 #mean of the two values
                        thValY = (yEdge[j]+yBase[k])/2 
            """
            thValX = (fAux[1]-fAux1[1])/(fAux1[0]-fAux[0])
            #thValY = fAux1[0]*thValX+fAux1[1]
            # plot one in every 10 values to check that it works
            """
            if i == 10 or i==45:
                 plt.plot(xEdge,yEdge)
                 plt.plot(x1,y1)
                 plt.plot(xBase,yBase)
                 plt.plot(x,y)
                 plt.plot(thValX,thValY,'ro')
            """
            tEdgeTimes[i] = (thValX)
        else:
            tEdgeTimes[i] = 0
    
 
    return tEdgeTimes
# findEdgeTimes1 function end
    
# function used to find the fwhm of a histogram
# thVal will be the value from which the algorithm will start recording values
def fwhmCal(histArray,thVal):

#quick and dirty without using built in functions
#find the first time it crosses the vth value
    left= 0
    index = 0
    while( left == 0 and index <len(histArray)-1):
        if histArray[index] > thVal:
            left = index
        index+=1
    #I can now jump to the max value, only one peak should exist
    index = np.argmax(histArray)
    right = 0
    while (right == 0 and index <len(histArray)-1):
        if histArray[index]<thVal:
            right = index
        index+=1
    
    mCurve = histArray[left:right]
    #TODO mejorar esto, demasiadas variables innecesarias
    #fit this curve to a gaussian function     
    x = range(len(mCurve))
    y = mCurve
    
    #n = len(x)                          #the number of data
    #mean = sum(x*y)/n                   #note this correction
    #sigma = sum(y*(x-mean)**2)/n        #note this correction
    
    def gaus(x,a,x0,sigma):
        return a*np.exp(-(x-x0)**2/(2*sigma**2))
    
    popt,pcov = curve_fit(gaus,x,y) #,p0=[1,mean,sigma])  
    
    #plot the values to see that it works
    plt.figure()
    plt.plot(x,y)
    plt.plot(x,y,'b',label='data')
    plt.plot(x,gaus(x,*popt),'r:',label='fit')
      
    return popt, pcov
# end of fwhmCal
    
#modification of the previous function to compensate for the noise the measurement    
def energyBorders(histArray):
#quick and dirty without using built in functions
#find the first time it crosses the vth value
    
    #this time i will have to start from the right
    thVal = histArray.max()/10
    index = len(histArray)-1
    right = 0
    while (right == 0 and index > 1):
        if histArray[index]>thVal:
            right = index
        index-=1
    #now I should move to the position of the max
    index = np.argmax(histArray)
    thVal = histArray.max()-histArray.max()/10
    left= 0
    while( left == 0 and index > 1):
        if histArray[index] < thVal:
            left = index
        index-=1
    
    mCurve = histArray[left:right]
    #TODO mejorar esto, demasiadas variables innecesarias
    #fit this curve to a gaussian function     
    x = range(len(mCurve))
    y = mCurve
    
    #n = len(x)                          #the number of data
    #mean = sum(x*y)/n                   #note this correction
    #sigma = sum(y*(x-mean)**2)/n        #note this correction
    
    def gaus(x,a,x0,sigma):
        return a*np.exp(-(x-x0)**2/(2*sigma**2))
    
    popt,pcov = curve_fit(gaus,x,y) #,p0=[1,mean,sigma])  
    yN = gaus(x,*popt)
    maxPos = np.argmax(yN)
    right = 0
    index = maxPos
    thVal = yN.max()
    while (right == 0 and index <len(yN)-1):
        if yN[index] < thVal/2:
            right = index
        index+=1
    
    maxEng = left+right
    minEng = maxEng - (right-maxPos)*2
    
    """
    #plot the values to see that it works
    plt.figure()
    plt.plot(x,y)
    plt.plot(x,y,'b',label='data')
    plt.plot(x,gaus(x,*popt),'r:',label='fit')
    """  
    return maxEng,minEng
# end of energyBorders
    


# function to remove the offsets of the values that will be used....very rustic
def removeOffsetSimple(event,maxPos):
    #correct the offset
    auxArray = np.asarray(event)
    # 50 is to not take the actual pulse, but be always before the pulse
    offset = np.mean(auxArray[0:maxPos-50])
    auxArray[:] = [var - offset for var in auxArray]
    return auxArray
# removeOffsetSimple function end
    

# function that takes the two channels that will be compared for timing
# and removes any unwanted events, both inputs should be lists
def removeUnwantedEvents(chA, chB):
    #first look for the max value on all events

    
    #find the position of the maximum....i will use a lot of iterations but....
    # frakk the systemmm!!!!!!
    maxMean = getMaxMeanValue(chA,chB)

    
    maxThPosArrayA = np.asarray(getThPos(chA,maxMean))
    maxThPosArrayB = np.asarray(getThPos(chB,maxMean))
    
    meanIntValsA = []
    meanIntValsB = []
    #to classify events as valid or not, just use the mean of the integral 
    # of the first half of the event
    for i in range(0,len(chA)):
        #correct the offset
        #now find the integral values
        meanIntValsA.append(trapz(np.abs(removeOffsetSimple(chA[i],maxThPosArrayA[i])[0:maxThPosArrayA[i]-50])))
        #abs is used for all data to take out big oscillations as well
        meanIntValsB.append(trapz(np.abs(removeOffsetSimple(chB[i],maxThPosArrayB[i])[0:maxThPosArrayB[i]-50])))
        
    
    #find the means
    meanIntsA = np.mean(meanIntValsA)
    meanIntsB = np.mean(meanIntValsB)
    
    
    
    #no need to use an intermediate list, can just delete values as I go

    # delList = [] #list of events to be removed
                # events should be deleted from the two channels
    for i in range(0,len(chA)):
        if (meanIntValsA[i] > meanIntsA*2.5 or meanIntValsB[i] > meanIntsB*2.5 or maxThPosArrayB[i]>1500 or maxThPosArrayA[i]>1500):
            #should probably use*3
            #delList.append(i)
            #plt.plot(chA[i])
            #plt.plot(chB[i])
            chA[i] = 'rem' #mark for removal
            chB[i] = 'rem'
        
    #remove the marked values
    for i in range(0,chA.count('rem')):
        chA.remove('rem')
        chB.remove('rem')
        
    #TODO ask Josh if I should also remove events that start to soon
        
# removeUnwantedEvents function end
        

# function used to get the leading edge trigger time
def findEdgeTimes(chA, slopeProp=20, nValsMean=10):
  
    
    maxMean = getMaxMeanValue1(chA)    
    maxThPosArray = np.asarray(getThPos(chA,maxMean))
    plt.figure
    plt.plot(maxThPosArray)
    tEdgeTimes= []
    plt.figure
    for i in range(0,len(chA)):
        mEvent = np.asarray(chA[i])
        eventTh = maxThPosArray[i]
        
        initSlope = np.mean([(mEvent[eventTh]-mEvent[eventTh-1]),(mEvent[eventTh-1]-mEvent[eventTh-2])])
        slope = initSlope
        #slopeProportion = 20 #change this value to get only the actual slope    
        currInd = eventTh
        while((slope > initSlope/slopeProp) and ((eventTh-currInd)<30)):
            currInd=currInd-1
            slope = np.mean([(mEvent[currInd]-mEvent[currInd-1]),(mEvent[currInd-1]-mEvent[currInd-2])])
        currInd   
        
        leftC = currInd-3 # take three more samples
        rightC = eventTh # dont take more on this side as i dont care about the upper side of the curve
        #to have a time vector in nanoseconds
        
        #time vector needed for the curve fitting part
        t=np.linspace(0,len(chA[1])*0.05,len(chA[1])) #sampling time 50 ps
        
        
        #use a polynomial fit
        x = np.linspace(t[leftC],t[rightC],rightC-leftC)
        y = mEvent[leftC:rightC]
        fAux = np.polyfit(x,y,3)
        fInterp = np.poly1d(fAux)
        
        # extrapolate new values
        xN = np.linspace(t[leftC-5],t[rightC],100)
        yN = fInterp(xN)  
        
        #take the first ten values for the mean
        filtMean = np.mean(mEvent[leftC-nValsMean-1:leftC-1])
        #remove the offset
        yN[:] = [var - filtMean for var in yN]
        #find the point rise up point
        edgePos = bisect.bisect(yN,filtMean)
        if (edgePos > 0 and edgePos < 100):
            tEdgeTimes.append(xN[edgePos])
        else:
            tEdgeTimes.append(0)
            plt.plot(x,y)
            plt.plot(xN,yN)
    
    return tEdgeTimes
# findEdgeTimes function end