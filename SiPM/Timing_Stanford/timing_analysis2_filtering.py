# -*- coding: utf-8 -*-
"""
Created on Mon Oct 19 11:38:39 2015

@author: rigo

Hecho para probar a trozos como funcionaria esto filtrando los distintos trozoz de sennal
 dado que se usa una freq de muestreo tan alta para filtrar correctamente tenemos que usar mucho mas
 que un solo pulso, y aún así la mejora tampoco es la panace...
"""

#libraries taken from the previous implementation so....probably will be better to take some out

#import all the needed libraries
#  import h5py #not needed if I am using stored pulses 
# import random
# import glob
# import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz
import scipy
import bisect
import pickle


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

#test filters
mEvent = ch1[10]

offset = mEvent[0]
# force the signal to start at 0, to avoid oscillatios on the filter
mEvent[:] = [var - offset for var in mEvent]

# use fourier transforms for filtering
fftVal=scipy.fft(mEvent[0:500]) # (G) and (H)  
bp=fftVal[:]
for i in range(len(bp)): # (H-red) 
    if i>=10:bp[i]=0  
            
ibp=scipy.ifft(bp) # (I), (J), (K) and (L)  

plt.plot(mEvent)
plt.plot(ibp.real)

from scipy.signal import butter, lfilter
# trying linear filters instead
def butter_bandpass(lowcut, highcut, fs, order=5):
    nyq = 0.5 * fs
    low = lowcut / nyq
    high = highcut / nyq
    b, a = butter(order, [low, high], btype='band')
    return b, a


def butter_bandpass_filter(data, lowcut, highcut, fs, order=5):
    b, a = butter_bandpass(lowcut, highcut, fs, order=order)
    y = lfilter(b, a, data)
    return y
    
# Sample rate and desired cutoff frequencies (in Hz).
fs = fs = 1/0.05e-9
fcenter = round((0.0506-0.003158*2)/1e-9)
#use a large enough bandwith
lowcut = fcenter/2
highcut = fcenter*2

mEvent = ch1[10]
# to get the noise level could try later to use a low pass with the same lowcut
filtEvent = butter_bandpass_filter(mEvent,lowcut, highcut, fs, order = 5)



#prbbar esto luego

import numpy as np
from scipy.fftpack import rfft, irfft, fftfreq

# Sample rate and desired cutoff frequencies (in Hz).
fs = fs = 1/0.05e-9
fcenter = round((0.0506-0.003158*2)/1e-9)
maxFreq = fs

nArray = np.zeros(len(ch1)*len(ch1[1]))
mEvent = ch1[10]
for i in range(0,len(ch1)):
    nArray[i*len(ch1[1]):i*len(ch1[1])+len(ch1[1])]=np.asarray(ch1[i])
    

#to have a time vector in nanoseconds
t=np.linspace(0,len(ch1[1])*0.05*len(ch1),len(ch1[1])*len(ch1)) #sampling time 50 ps
time   = t*1e-9 #np.linspace(0,maxFreq,len(mEvent))
signal = nArray

W = fftfreq(signal.size, d=time[1]-time[0])
f_signal = rfft(signal)

# If our original signal time was in seconds, this is now in Hz    
cut_f_signal = f_signal.copy()
#probamos filtrando a lo burro, todo menos las cosas con mayor contribucion
# this is a pass band filter that keeps only the frequency of the rising edge
cut_f_signal[(W<18e6)] = 0
cut_f_signal[(W>21e6) & (W<38e6)] = 0
cut_f_signal[(W>41e6) & (W<58e6)] = 0
cut_f_signal[(W>61e6) & (W<78e6)] = 0
#cut_f_signal[(W>81e6) & (W<118e6)] = 0
#cut_f_signal[(W>118e6)] = 0
#con esto ya se ve chuspi...pero a ver si puedo cargarme mas armonicos
#cut_f_signal[(W>81e6)] = 0

cut_f_signal[(W>121e6) & (W<138e6)] = 0
cut_f_signal[(W>141e6) & (W<158e6)] = 0
cut_f_signal[(W>161e6) & (W<178e6)] = 0
cut_f_signal[(W>181e6)] = 0

#not quite needed
"""
#adding more harmonics makes the signal a lot sharper...yup i get some oscilations but...
# i dont care about those, i can just take them out later on
cut_f_signal[(W>181e6) & (W<198e6)] = 0
cut_f_signal[(W>201e6) & (W<218e6)] = 0
cut_f_signal[(W>221e6) & (W<238e6)] = 0
cut_f_signal[(W>241e6) & (W<258e6)] = 0
cut_f_signal[(W>261e6) & (W<278e6)] = 0
cut_f_signal[(W>281e6) & (W<298e6)] = 0
# las 300 a toperrrr
cut_f_signal[(W>301e6) & (W<318e6)] = 0
cut_f_signal[(W>321e6) & (W<338e6)] = 0
cut_f_signal[(W>341e6) & (W<358e6)] = 0
cut_f_signal[(W>361e6) & (W<378e6)] = 0
cut_f_signal[(W>381e6) & (W<398e6)] = 0

cut_f_signal[(W>401e6)] = 0
"""

cut_signal = irfft(cut_f_signal)
plt.plot(cut_signal)


# a lo gitano copy pasteo para el canal 2
nArray2 = np.zeros(len(ch1)*len(ch1[1]))
for i in range(0,len(ch1)):
    nArray2[i*len(ch1[1]):i*len(ch1[1])+len(ch1[1])]=np.asarray(ch2[i])
    
signal2 = nArray2

f_signal2 = rfft(signal2)

# If our original signal time was in seconds, this is now in Hz    
cut_f_signal2 = f_signal2.copy()
#probamos filtrando a lo burro, todo menos las cosas con mayor contribucion
# this is a pass band filter that keeps only the frequency of the rising edge
cut_f_signal2[(W<18e6)] = 0
cut_f_signal2[(W>21e6) & (W<38e6)] = 0
cut_f_signal2[(W>41e6) & (W<58e6)] = 0
cut_f_signal2[(W>61e6) & (W<78e6)] = 0
cut_f_signal2[(W>121e6) & (W<138e6)] = 0
cut_f_signal2[(W>141e6) & (W<158e6)] = 0
cut_f_signal2[(W>161e6) & (W<178e6)] = 0
cut_f_signal2[(W>181e6)] = 0

cut_signal2 = irfft(cut_f_signal2)
plt.plot(cut_signal2)

#divide the signal in pieces to get the original channels back
ch1F = []
ch2F = []

for i in range(0,len(ch1)):
    ch1F.append(cut_signal[i*len(ch1[1]):i*len(ch1[1])+len(ch1[1])])
    ch2F.append(cut_signal2[i*len(ch1[1]):i*len(ch1[1])+len(ch1[1])])
    
# save the filtered data
mFile = open('100pulses_filt.dat','w')
pickle.dump([ch1F,ch2F],mFile)
mFile.close()
