# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: LV1.py
# Description: Lotka-Volterra model using ODEINT
# Usage: python LV1.py
# Date: Oct 2025



import numpy as np
import scipy.integrate as integrate
import matplotlib.pylab as p
import os

# Define model
def dCR_dt(pops, t=0):
    R = pops[0]
    C = pops[1]
    dRdt = r * R - a * R * C 
    dCdt = -z * C + e * a * R * C
    return np.array([dRdt, dCdt])

# Parameters
r = 1.      # intrinsic growth rate of resource
a = 0.1     # consumer search rate (attack rate)
z = 1.5     # consumer mortality rate
e = 0.75    # consumer efficiency

# Time vector
t = np.linspace(0, 15, 1000)

# Initial conditions: R0 and C0
R0 = 10
C0 = 5 
RC0 = np.array([R0, C0])

# Integrate ODEs
pops, infodict = integrate.odeint(dCR_dt, RC0, t, full_output=True)

# Create results directory path
results_dir = "../results"
os.makedirs(results_dir, exist_ok=True)

# ---- Plot 1: Time vs. Population Densities ----
f1 = p.figure()
p.plot(t, pops[:, 0], 'g-', label='Resource density')
p.plot(t, pops[:, 1], 'b-', label='Consumer density')
p.grid()
p.legend(loc='best')
p.xlabel('Time')
p.ylabel('Population density')
p.title('Consumer–Resource Population Dynamics')

# Save figure
f1.savefig(os.path.join(results_dir, "time_vs_density.png"))

# ---- Plot 2: Resource vs. Consumer (Phase Plot) ----
f2 = p.figure()
p.plot(pops[:, 0], pops[:, 1], 'r-', label='Phase plot')
p.grid()
p.legend(loc='best')
p.xlabel('Resource density')
p.ylabel('Consumer density')
p.title('Consumer–Resource Phase Plot')

# Save figure
f2.savefig(os.path.join(results_dir, "resource_vs_consumer.png"))

# Close figures to prevent pop-up
p.close('all')
