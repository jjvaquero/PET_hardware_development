# -*- coding: utf-8 -*-
"""
Created on Wed Oct 21 12:42:17 2015

@author: rigo

this will be used to filter out events that are not true coincidence events, by taking into account
only those events inside the 511KeV peak
"""

#start off by reading the files...all of them in this case
#import all the needed libraries
import h5py #not needed if I am using stored pulses 
import glob
import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz

import pulse_proc_common as pulseProc

# the reading data from files is commented since I am using already stored pulses
# left here to remeber that the pusles have been randomly selected

# version a saco paco, que mete todos los valores posibles

#used to test different filtering, anaysis algorithms
strDir = os.getcwd()
fNames = glob.glob(strDir+"/20mm 69V/*.h5")
ch3 = []
ch4 = []

for fileName in fNames: #later on do it for all data
    fData = h5py.File(fileName, 'r')
       
    #only data from the energy channels will be taken into account
    ch3.append(trapz(fData['Waveforms/Channel 3/Channel 3Data'].value))
    ch4.append(trapz(fData['Waveforms/Channel 4/Channel 4Data'].value))
    #integrating the energy signals works best
    
    """ 
    #try a different approach using the maximum values 
    ch3.append(np.asarray(fData['Waveforms/Channel 3/Channel 3Data'].value).max())
    ch4.append(np.asarray(fData['Waveforms/Channel 4/Channel 4Data'].value).max())
    """
    fData.close()
 
#TODO consider the option of adding some pulse processing before just moving on with the data   
#now ch3 and ch4 have an energy value for each stored event
#after checking at the values I could use a 
 
histCh3 = np.histogram(ch3,512,[0,2048])
histCh4 = np.histogram(ch4,512,[0,2048])

"""
#try generating my own histograms of 2048 channels
histo3 = np.zeros(2048)
histo4 = np.zeros(2048)
for val in ch3:
    if val > 0 and val < 2048:
        histo3[round(val)]+=1
#repeat it for channel 4
for val in ch4:
    if val > 0 and val < 2048:
        histo4[round(val)]+=1
"""

#plt.figure()
#plt.plot(histCh3[0],label='Ch3')
#plt.plot(histCh4[0],label='Ch4')

maxEng3, minEng3 = pulseProc.energyBorders(histCh3[0])
maxEng4, minEng4 = pulseProc.energyBorders(histCh4[0])

chX = list(ch3)
chY = list(ch4)
#compensate for the compression used before
#now prepare to remove unwanted events
for i in range(len(chX)):  #widened the margins so that more events could fit in
    if (chX[i] > maxEng3*4.5 or chX[i] < minEng3*3.5 or chY[i] > maxEng4*4.5 or chY[i] < minEng4*3.5 ):
    #if (ch3[i] > maxEng3*4 or ch3[i] < minEng3*4 or ch4[i] > maxEng4*4 or ch4[i] < minEng4*4 ):
        #should probably use*3
        #delList.append(i)
        #plt.plot(chA[i])
        #plt.plot(chB[i])
        chX[i] = 'rem' #mark for removal
        chY[i] = 'rem'

#remove the marked values
for i in range(0,chX.count('rem')):
    chX.remove('rem')
    chY.remove('rem')

"""
for fileName in fNames[1:100]:
    fData = h5py.File(fileName, 'r')
    mEvent = fData['Waveforms/Channel 3/Channel 3Data'].value
    plt.plot(mEvent)
    fData.close()
"""
