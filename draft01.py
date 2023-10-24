
#%%

import numpy as np
import matplotlib.pyplot as plt

%matplotlib qt

f0 = 50
nsteps = 10
phi = 0
dead_time = 0.5e-3

d2r = np.pi/180
r2d = 1/d2r

T = 1/f0
w0 = 2*np.pi*f0
ar_t = np.arange(start=0,stop=T, step=T/5000)
ar_amp = np.sin(w0*ar_t + phi)


Ton = (0.5*T) - dead_time
step = Ton/10
tsum = dead_time/2 + step/2
li_t = []
while(tsum<(T*0.5)):
    li_t.append(tsum)
    tsum += step

li_amp = [np.sin(w0*t + phi) for t in li_t]

li_t2 = [0]
tsum = dead_time/2
while(tsum<T):
    li_t2.append(tsum)
    tsum += step

li_amp2 = [np.sin(w0*(t+step/2) + phi) for t in li_t2]
li_amp2[0] = 0
li_amp2 = [max(n,0) for n in li_amp2]









plt.plot(ar_t, ar_amp, label = "cont")
plt.bar(li_t, li_amp, label = "disc", alpha = 0.2, width = step)
# plt.scatter(li_t, li_amp, label = "disc_1", alpha = 0.8)
plt.scatter(li_t2, li_amp2, label = "disc2", alpha = 0.8)


plt.legend()

plt.grid()