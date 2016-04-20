# -*- coding: utf-8 -*-
"""
Created on Wed Oct 14 10:54:47 2015

@author: rigo
"""


#import all the needed libraries
import h5py
import glob
import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz
import bisect


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
def getMaxMeanValue1(chA):
    maxVals = []
    #use the two channels as they should have similar signals
    for i in range(0,len(chA)):
        maxVals.append(chA[i].max())        
    
    maxMean = np.mean(maxVals)
    maxMean-= maxMean/10
    
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



#main function

strDir = os.getcwd()
fNames = glob.glob(strDir+"/20mm 69V/*.h5")
nEventsRead = 10000 #for debuging so I don't need to read everything....
#nFiles = len(fNames)
ch1 = []
ch2 = []
ch3 = []
ch4 = []


for fileName in fNames[1:nEventsRead]: #later on do it for all data
    fData = h5py.File(fileName, 'r')
    ch1.append(fData['Waveforms/Channel 1/Channel 1Data'].value)
    ch2.append(fData['Waveforms/Channel 2/Channel 2Data'].value)
    ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
    ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
    fData.close()



#to have a time vector in nanoseconds
t=np.linspace(0,len(ch1[1])*0.05,len(ch1[1])) #sampling time 50 ps

    

#copy
chX = list(ch1)
chY = list(ch2)
#check that the event is valid
removeUnwantedEvents(chX,chY)



#run again the functions to find the maximums and the threshold values
chXEdge = np.asarray(findEdgeTimes(chX))
chYEdge = np.asarray(findEdgeTimes(chY))

timeDiffs= []
count =0
for i in range(0,len(chXEdge)):
    if (chXEdge[i] > 0 and chYEdge[i]>0):
        timeDiffs.append(chXEdge[i]-chYEdge[i])
    else:
        count+=1
    
timeDiffHist = np.histogram(timeDiffs,1024)

plt.figure()
plt.plot(timeDiffHist[0])

for event in chX :
    plt.plot(event)

"""

plt.figure()
for event in chX:
    plt.plot(event)
    
plt.figure()
for event in chY:
    plt.plot(event)
    
"""


"""
#TODO
1 - elegir un valor para el threshold tomando primero 100 valores
2 - usando este valor, leer todos los demás valores y calcular diferencia entre 1 y 2
para esto usar 2 como referencia todo el tiempo
3- calcular el espectro de energia integrando, usar tb algun tipo de threshold

4- para sacar el corte con el threshold, buscar el momento en que se pasa el valor maximo
a continuacion ir hacia atrás dentro del vector hasta encontrar el cruce con vth
...sin nada chuspi del tipo aproximaciones de splines ni mierdas...a saco paco

"""
