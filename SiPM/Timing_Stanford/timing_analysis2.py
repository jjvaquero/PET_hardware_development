# -*- coding: utf-8 -*-
"""
Created on Mon Oct 19 11:38:39 2015

@author: rigo
"""

#libraries taken from the previous implementation so....probably will be better to take some out

#import all the needed libraries
#  import h5py #not needed if I am using stored pulses 
# import random
# import glob
# import os
import matplotlib.pyplot as plt
import numpy as np
import pickle

import pulse_proc_common as pulseProc

# the reading data from files is commented since I am using already stored pulses
# left here to remeber that the pusles have been randomly selected

"""
#used to test different filtering, anaysis algorithms
strDir = os.getcwd()
fNames = glob.glob(strDir+"/20mm 69V/*.h5")
nEventsRead = 10 #for debuging so I don't need to read everything....
#nFiles = len(fNames)
ch1 = []
ch2 = []
ch3 = []
ch4 = []

#downsample the number of evets to acquire
downNames = random.sample(fNames, nEventsRead)
#could also use this function to randomize the order of the events
# this will make the processing more robust if I do it by dividing the data in to smaller pieces
# like this I will remove temporary artifcats


for fileName in fNames[1:nEventsRead]: #later on do it for all data
    fData = h5py.File(fileName, 'r')
    ch1.append(fData['Waveforms/Channel 1/Channel 1Data'].value)
    ch2.append(fData['Waveforms/Channel 2/Channel 2Data'].value)
    ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
    ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
    fData.close()


#storing this data on to a single file to use it later
myFile = open('100pulses.dat','w')
#store data using pickle....
pickle.dump([ch1,ch2,ch3,ch4],myFile)
myFile.close()

"""

#now i can read the data back to use it for processing
myFile = open('100pulses.dat','r')
ch1,ch2, ch3, ch4 = pickle.load(myFile)
myFile.close()
#to have a time vector in nanoseconds
t=np.linspace(0,len(ch1[1])*0.05,len(ch1[1])) #sampling time 50 ps

#copy
chX = list(ch1)
chY = list(ch2)

# in this new version...no events are taken out
#check that the event is valid
#pulseProc.removeUnwantedEvents(chX,chY)
#test filters
mEvent = ch1[10]
maxPos1 = pulseProc.getThPos1(chX)
plt.figure()
timesX = pulseProc.findEdgeTimes1(chX)
plt.figure()
timesY = pulseProc.findEdgeTimes1(chY)

#find the difference between the two values
diff = np.zeros(len(timesX))
for i in range(0,len(timesX)):
    diff[i] = timesX[i] - timesY[i]
    
#now i have to make a histogram 
diff[69] = (diff[70]+diff[68])/2  #valor que se que esta mal....lo puedo filtrar luego con medias e historias
diffHist = np.histogram(diff,100)
plt.figure()
plt.plot(diffHist[0])

#ahora meter esto en un bucle y lanzarlo las 1000 veces con trozos de 100 eventos
# para ir poblando el histograma sin que pete la ram

