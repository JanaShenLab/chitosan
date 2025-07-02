
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import matplotlib.colors as colors 
from matplotlib.colors import (LogNorm, Normalize)
from matplotlib import rcParams
import matplotlib
rcParams['font.family'] = 'sans'
rcParams['axes.spines.top'] = 'False'
rcParams['axes.spines.right'] = 'False'
from matplotlib.ticker import MultipleLocator
matplotlib.rc('xtick', labelsize=12)
matplotlib.rc('ytick', labelsize=12)
rcParams['lines.markersize'] **0.25 
rcParams['axes.titlepad'] = '10'


stride = 1

D1 = np.loadtxt('fracOfsasa.dat')
t1 = np.divide(D1[:,0],20)
m1 = D1[:,1]


fig, ax = plt.subplots(figsize=(1.5,1.5))
plt.plot(t1[::stride], m1[::stride], lw=1, color='green')


plt.ylim(0.5, 1.0)
plt.xlim(0, 4000)
plt.xticks([0, 2000, 4000],fontsize=16)
plt.yticks([0.5, 0.6, 0.7, 0.8, 0.9, 1.0]) 
ax.tick_params(labelleft=False)
ax.tick_params(labelbottom=False)
ax.tick_params(axis='both', which='major', labelsize=12)
plt.tight_layout()
plt.savefig('DA_50a_sasa_1.png',dpi=300,transparent=True,format='png')
plt.show()
