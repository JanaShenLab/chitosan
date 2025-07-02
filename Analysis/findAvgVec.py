#!/usr/bin/python

import numpy as np

chain_num = []
for i in range(1, 4):
    chain_num.append(i)
chain_num = tuple(chain_num)

frames = np.loadtxt('vec1.dat', usecols=0)
vec1 = np.loadtxt('vec1.dat', usecols=chain_num)
vec2 = np.loadtxt('vec2.dat', usecols=chain_num)
vec3 = np.loadtxt('vec3.dat', usecols=chain_num)
vec4 = np.loadtxt('vec4.dat', usecols=chain_num)
vec5 = np.loadtxt('vec5.dat', usecols=chain_num)
vec6 = np.loadtxt('vec6.dat', usecols=chain_num)
vec7 = np.loadtxt('vec7.dat', usecols=chain_num)
vec8 = np.loadtxt('vec8.dat', usecols=chain_num)
vec9 = np.loadtxt('vec9.dat', usecols=chain_num)
vec10 = np.loadtxt('vec10.dat', usecols=chain_num)
vec11 = np.loadtxt('vec11.dat', usecols=chain_num)
vec12 = np.loadtxt('vec12.dat', usecols=chain_num)
vec13 = np.loadtxt('vec13.dat', usecols=chain_num)
vec14 = np.loadtxt('vec14.dat', usecols=chain_num)
vec15 = np.loadtxt('vec15.dat', usecols=chain_num)
vec16 = np.loadtxt('vec16.dat', usecols=chain_num)
vec17 = np.loadtxt('vec17.dat', usecols=chain_num)
vec18 = np.loadtxt('vec18.dat', usecols=chain_num)
vec19 = np.loadtxt('vec19.dat', usecols=chain_num)
vec20 = np.loadtxt('vec20.dat', usecols=chain_num)
vec21 = np.loadtxt('vec21.dat', usecols=chain_num)
vec22 = np.loadtxt('vec22.dat', usecols=chain_num)
vec23 = np.loadtxt('vec23.dat', usecols=chain_num)
vec24 = np.loadtxt('vec24.dat', usecols=chain_num)

x_sum = vec1[:,0] + vec2[:,0] + vec3[:,0] + vec4[:,0] + vec5[:,0] + vec6[:,0] + vec7[:,0] + vec8[:,0] + vec9[:,0] + vec10[:,0] + vec11[:,0] + vec12[:,0] + vec13[:,0] + vec14[:,0] + vec15[:,0] + vec16[:,0] + vec17[:,0] + vec18[:,0] + vec19[:,0] + vec20[:,0] + vec21[:,0] vec22[:,0] + vec23[:,0] + vec24[:,0] 

y_sum = vec1[:,1] + vec2[:,1] + vec3[:,1] + vec4[:,1] + vec5[:,1] + vec6[:,1] + vec7[:,1] + vec8[:,1] + vec9[:,1] + vec10[:,1] + vec11[:,1] + vec12[:,1] + vec13[:,1] + vec14[:,1] + vec15[:,1] + vec16[:,1] + vec17[:,1] + vec18[:,1] + vec19[:,1] + vec20[:,1] + vec21[:,1] + vec22[:,1] + vec23[:,1] + vec24[:,1]

z_sum = vec1[:,2] + vec2[:,2] + vec3[:,2] + vec4[:,2] + vec5[:,2] + vec6[:,2] + vec7[:,2] + vec8[:,2] + vec9[:,2] + vec10[:,2] + vec11[:,2] + vec12[:,2] + vec13[:,2] + vec14[:,2] + vec15[:,2] + vec16[:,2] + vec17[:,2] + vec18[:,2] + vec19[:,2] + vec20[:,2] + vec21[:,2] + vec22[:,2] + vec23[:,2] + vec24[:,2]


x_avg = x_sum/24
y_avg = y_sum/24
z_avg = z_sum/24

#arr = np.array((x_avg, y_avg, z_avg), dtype=float)


#np.savetxt('vecAvg.txt', arr)

newfile = [x_avg, y_avg, z_avg]

file1 = open('vecAvg.dat', "w")
for x in zip(*newfile):
    file1.write("{0}\t{1}\t{2}\n".format(*x))
file1.close()

