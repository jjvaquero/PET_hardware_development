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
#nFiles = len(fNames)
ch1 = []
ch2 = []
ch3 = []
ch4 = []


for fileName in fNames[1:100]: #later on do it for all data
    fData = h5py.File(fileName, 'r')
    ch1.append(fData['Waveforms/Channel 1/Channel 1Data'].value)
    ch2.append(fData['Waveforms/Channel 2/Channel 2Data'].value)
    ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
    ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
    fData.close()



#to have a time vector in nanoseconds
t=np.linspace(0,len(ch1[1])*0.05,len(ch1[1])) #sampling time 50 ps

#take only 100 samples to find the proper threshold values

#first look for the max value on all events
maxVals = []
for event in ch1:
    maxVals.append(event.max())

maxMean = np.mean(maxVals)
maxMean-= maxMean/10

#find the position of the maximum....i will use a lot of iterations but....
# frakk the systemmm!!!!!!
maxThPos = []
for event in ch1: 
    maxThPos.append(bisect.bisect(event,maxMean))

maxThPosArray = np.asarray(maxThPos)
meanIntVals = []
#to classify events as valid or not, just use the mean of the integral 
# of the first half of the event
for i in range(0,len(ch1)):
    #correct the offset
    auxArray = np.asarray(ch1[i])
    offset = np.mean(auxArray[0:maxThPosArray[i]])
    auxArray[:] = [var - offset for var in auxArray]
    #now find the integral values
    meanIntVals.append(trapz(auxArray[0:maxThPosArray[i]]))
    
meanInts = np.mean(meanIntVals)

delList = [] #list of events to be removed
            # events should be deleted from the two channels
for i in range(0,len(ch1)):
    if meanIntVals[i] > meanInts*2:
        #should probably use*3
        delList.append(i)


# function that takes the two channels that will be compared for timing
# and removes any unwanted events, both inputs should be lists
def removeUnwantedEvents(chA, chB):
    #first look for the max value on all events
    maxVals = []
    #use the two channels as they should have similar signals
    for i in range(0,len(chA)):
        maxVals.append(chA[i].max())
        maxVals.append(chB[i].max())
        
    
    maxMean = np.mean(maxVals)
    maxMean-= maxMean/10
    
    #find the position of the maximum....i will use a lot of iterations but....
    # frakk the systemmm!!!!!!
    maxThPosA = []
    maxThPosB = []
    for i in range(0,len(chA)): 
        maxThPosA.append(bisect.bisect(chA[i],maxMean))
        maxThPosB.append(bisect.bisect(chB[i],maxMean))
    
    maxThPosArrayA = np.asarray(maxThPosA)
    maxThPosArrayB = np.asarray(maxThPosB)
    
    meanIntValsA = []
    meanIntValsB = []
    #to classify events as valid or not, just use the mean of the integral 
    # of the first half of the event
    for i in range(0,len(chA)):
        #correct the offset
        auxArrayA = np.asarray(chA[i])
        offsetA = np.mean(auxArray[0:maxThPosArrayA[i]])
        auxArrayA[:] = [var - offsetA for var in auxArrayA]
        #now find the integral values
        meanIntValsA.append(trapz(auxArrayA[0:maxThPosArrayA[i]]))
    
        auxArrayB = np.asarray(chB[i])
        offsetB = np.mean(auxArray[0:maxThPosArrayB[i]])
        auxArrayB[:] = [var - offsetB for var in auxArrayB]
        #now find the integral values
        meanIntValsB.append(trapz(auxArrayB[0:maxThPosArrayB[i]]))
        
    #find the means
    meanIntsA = np.mean(meanIntValsA)
    meanIntsB = np.mean(meanIntValsB)
    
    
    
    #no need to use an intermediate list, can just delete values as I go

    # delList = [] #list of events to be removed
                # events should be deleted from the two channels
    for i in range(0,len(chA)):
        if meanIntValsA[i] > meanIntsA*2 or meanIntValsB[i] > meanIntsB*2:
            #should probably use*3
            #delList.append(i)
            chA[i] = 'rem' #mark for removal
            chB[i] = 'rem'
        
    #remove the marked values
    for i in range(0,chA.count('rem')):
        chA.remove('rem')
        chB.remove('rem')
# removeUnwantedEvents function end

    
    


#from here on it should be repeated for each event...so it will
# become a fucntion later on


#now look for the first time a value goes above this threshold
#check that the event is valid






f1 = plt.figure()
f2 = plt.figure()
ax1 = f1.add_subplot(111)
ax1.plot(ch1[10])
ax2 = f2.add_subplot(111)
ax2.plot(ch2[10])
plt.show()


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
