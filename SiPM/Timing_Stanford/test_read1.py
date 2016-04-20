# -*- coding: utf-8 -*-
"""
Created on Tue Oct 13 13:54:36 2015

@author: rigo
"""

import h5py
import glob
import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import trapz

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


"""
#to switch between interactive and non interactive plots
%pylab inline 
plot(...)

 %pylab qt  # wx, gtk, osx or tk
plot(...) 
"""



""" 
#for the histogram

histo = np.histogram(ch4,2048)
plt.plot(histo[0])

"""

#plt.plot(ch1)     
    

#read_direct(array, source_sel=None, dest_sel=None)
"""
f = h5py.File(strFiles[10], 'r')
data = f['Waveforms']
ch1 = data['Channel 1']
ch1_data = ch1['Channel 1Data']

ch1_dat = f['Waveforms/Channel 1/Channel 1Data']
plt.plot(ch1_data)
plt.plot(ch1_dat)

"""

