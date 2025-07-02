#!/usr/bin/python 

import numpy as np
import sys

file1 = sys.argv[1]

chain_range = []
for i in range(1, 25):
    chain_range.append(i)
cain_range = tuple(chain_range)

frames = np.loadtxt(file1, usecols=0)
prod = np.loadtxt(file1, usecols=chain_range)
prod_square = prod**2
prod_sum = np.sum(prod_square, axis=1)
prod_norm = prod_sum/24

prod_avg = np.average(prod_norm)
prod_STD = np.std(prod_norm)
print(prod_avg)
print(prod_STD)
