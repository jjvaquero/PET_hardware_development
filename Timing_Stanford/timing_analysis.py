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

strDir = os.getcwd()
fNames = glob.glob(strDir+"/20mm 69V/*.h5")
nEventsRead = 100 #for debuging so I don't need to read everything....
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

# function used to get the index of the trhesholds for all events
def getThPos(chA,thValue):
    maxThPos = []
    for i in range(0,len(chA)): 
        maxThPos.append(bisect.bisect(chA[i],thValue))
    
    return maxThPos
# getThPos function end  

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
        auxArrayA = np.asarray(chA[i])
        # 50 is to not take the actual pulse, but be always before the pulse
        offsetA = np.mean(auxArrayA[0:maxThPosArrayA[i]-50])
        auxArrayA[:] = [var - offsetA for var in auxArrayA]
        #now find the integral values
        meanIntValsA.append(trapz(np.abs(auxArrayA[0:maxThPosArrayA[i]-50])))
        #abs is used for all data to take out big oscillations as well
    
        auxArrayB = np.asarray(chB[i])
        offsetB = np.mean(auxArrayB[0:maxThPosArrayB[i]-50])
        auxArrayB[:] = [var - offsetB for var in auxArrayB]
        #now find the integral values
        meanIntValsB.append(trapz(np.abs(auxArrayB[0:maxThPosArrayB[i]-50])))
    
        
    
    #find the means
    plt.plot(meanIntValsA)
    plt.plot(meanIntValsB)
    meanIntsA = np.mean(meanIntValsA)
    meanIntsB = np.mean(meanIntValsB)
    
    
    
    #no need to use an intermediate list, can just delete values as I go

    # delList = [] #list of events to be removed
                # events should be deleted from the two channels
    for i in range(0,len(chA)):
        if meanIntValsA[i] > meanIntsA*2.5 or meanIntValsB[i] > meanIntsB*2.5:
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

    

#copy
chX = list(ch1)
chY = list(ch2)
#check that the event is valid
removeUnwantedEvents(chX,chY)

#now the data is clean




plt.figure()
for event in chX:
    plt.plot(event)
    
plt.figure()
for event in chY:
    plt.plot(event)
    



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
