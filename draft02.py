
#%%

import numpy as np
import matplotlib.pyplot as plt

%matplotlib qt


d2r = np.pi/180
r2d = 1/d2r


f0 = 50
nsteps = 10
phi = 0*d2r
dead_time = 0.5e-3



fsamp_pwl = 50e3



w0 = 2*np.pi*f0
T = 1/f0
Ton = (T/2) - dead_time/2
T_step = Ton/nsteps

# create time_pwl vector
ar_t_pwl = np.arange(start = 0,stop = T, step = 1/fsamp_pwl)
ar_sin = np.sin(w0*ar_t_pwl + phi)

# define time_lims
tsum = dead_time/4
li_t_lims = []
li_test = []
for n in range(nsteps+1):
    li_t_lims.append(tsum)
    tsum += T_step
    li_test.append(1)


amp = 0
idx_tlim = 0
tlim = li_t_lims[idx_tlim]
li_pwl_amp = []
for t in ar_t_pwl:
    if(t>tlim):
        idx_tlim += 1
        if(idx_tlim<len(li_t_lims)):
            # idx_tlim = min(idx_tlim,len(li_t_lims)-1)
            tlim = li_t_lims[idx_tlim]
            amp = np.sin(w0*(tlim - T_step/2) + phi)
        else:
            amp = 0
    li_pwl_amp.append(amp)


plt.plot(ar_t_pwl, ar_sin)
plt.plot(ar_t_pwl, li_pwl_amp)
plt.plot(li_t_lims, li_test)
plt.grid()

