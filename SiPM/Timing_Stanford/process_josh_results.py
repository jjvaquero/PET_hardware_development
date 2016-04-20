# -*- coding: utf-8 -*-
"""
Created on Wed Oct 21 11:16:26 2015

@author: rigo
"""

# process Josh`s data and get the data I want for processing

# import the matlab values
import scipy.io
import numpy as np
import matplotlib.pyplot as plt
import pulse_proc_common as pulseProc
matValues = scipy.io.loadmat('results-200to100.mat')

#store this values in local variables
timesLED = matValues.get('timesLED')
timeStamp1 = matValues.get('timestamp1')
timeStamp2 = matValues.get('timestamp2')

# fin the minimum value inside the timesLED matrix, this would be the optimum threshold
indexVal = np.argmin(timesLED)
# this will give me back the value as if the array was a row
indexX = indexVal/np.size(timesLED,1)
indexY = indexVal%np.size(timesLED,1)
minTh = timesLED[indexX,indexY]

print('min value used {0:3.3f}'.format(minTh))

# now retrieve the needed values from the timeStamps
times1 = timeStamp1[indexX,indexY,:]
times2 = timeStamp2[indexX,indexY,:]

# make an histogram just to cheack that they at least look similar
diffVals = np.zeros(len(times1))
for i in range(0,len(times1)):
    diffVals[i] = times1[i] - times2[i]
    
#now plot a histogram with this
histoPlot = np.histogram(diffVals,4096,[-63,64])
plt.plot(histoPlot[0])

popt,pcov = pulseProc.fwhmCal(histoPlot[0],10)
#the result in ns
fwhmTime = popt[2]*2.355 #popt2 = sigma
CTRns = fwhmTime*128/4096


