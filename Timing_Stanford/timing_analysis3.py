# -*- coding: utf-8 -*-
"""
Created on Mon Oct 19 11:38:39 2015

@author: rigo
"""

#libraries taken from the previous implementation so....probably will be better to take some out

#import all the needed libraries
import h5py #not needed if I am using stored pulses 
import random
import glob
import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz
import scipy
import bisect
import pickle

import pulse_proc_common as pulseProc

# the reading data from files is commented since I am using already stored pulses
# left here to remeber that the pusles have been randomly selected

# version a saco paco, que mete todos los valores posibles

#used to test different filtering, anaysis algorithms
strDir = os.getcwd()
fNames = glob.glob(strDir+"/20mm 69V/*.h5")
#nFiles = len(fNames)


#randomly sample events...or not....
#downNames = random.sample(fNames,len(fNames))
downNames = list(fNames)
#could also use this function to randomize the order of the events
# this will make the processing more robust if I do it by dividing the data in to smaller pieces
# like this I will remove temporary artifcats

#main loop that will be run until all file have been read
remaining = len(downNames)
#list where global results will be stored
diff = []
energyHist1 = np.zeros(1024) #energy histograms
energyHist2 = np.zeros(1024) #energy histograms

while remaining >0:
    
    #decide how many files to read, just to make it in chunks of 100 or less
    if remaining > 100:
        nEventsRead = 100 #step size that will be used to avoid overloading the RAM...
    else:
        nEventsRead = remaining
    
    #clear the variables where data will be stored
    ch1 = []
    ch2 = []
    ch3 = []
    ch4 = []

    # read a chunk of data
    for fileName in fNames[len(downNames)-remaining:(len(downNames)-remaining)+nEventsRead]: #later on do it for all data
        fData = h5py.File(fileName, 'r')
        ch1.append(fData['Waveforms/Channel 1/Channel 1Data'].value)
        ch2.append(fData['Waveforms/Channel 2/Channel 2Data'].value)
        ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
        ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
        fData.close()
    
    #update the number of reamining elemnts to read
    remaining-=nEventsRead
    
    #TODO add a filter for energy...bur for that i will probably do another thing...
    

    # in this new version...no events are taken out
    #check that the event is valid
    #pulseProc.removeUnwantedEvents(chX,chY)
    #test filters
    timesX = pulseProc.findEdgeTimes1(ch1)
    timesY = pulseProc.findEdgeTimes1(ch2)
    
    #find the difference between the two values
    #diff = np.zeros(len(timesX))
    for i in range(0,len(timesX)):
        if (timesX[i] != 0 and timesY[i] != 0):
            diff.append(timesX[i] - timesY[i])
    
    #update the energy histograms
    hist1Tmp = np.histogram(ch3,1024)
    hist2Tmp = np.histogram(ch4,1024)
    energyHist1 = np.add(energyHist1,hist1Tmp[0])
    energyHist2 = np.add(energyHist2,hist2Tmp[0])
    
    
    print('curr lims {0:5d} {1:5d}'.format(len(downNames)-remaining, (len(downNames)-remaining)+nEventsRead))
    

    
#now i have to make a histogram 
diffHist = np.histogram(diff,1024)
plt.figure()
plt.plot(diffHist[0])
plt.figure()
plt.plot(energyHist1)
plt.plot(energyHist2)

#ahora meter esto en un bucle y lanzarlo las 1000 veces con trozos de 100 eventos
# para ir poblando el histograma sin que pete la ram
"""
# could be used to solve polynomial equation systems
from sympy import solve_poly_system
from sympy.abc import x, y
solve_poly_system([x*y - 2*y, 2*y**2 - x**2], x, y)
"""