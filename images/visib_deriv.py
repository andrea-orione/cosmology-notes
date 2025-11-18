import matplotlib.pyplot as plt
import numpy as np
import scipy as sp

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

fig, ax = plt.subplots()

ETA = 6e-10
I_H = 13.6057
x_start = 0.25
x_end = 0.35
low = 1.e-3
t_cmb = 2.73 * 8.617333262e-5
x_max = 11000
x_min = 150

z = np.linspace(x_min, x_max, 1000)
t = t_cmb * (1 + z)
f = 2.*sp.special.zeta(3)/(np.pi**2) * ETA * (2 * np.pi * t/510_999)**1.5 * np.exp(I_H/t)
xe = (np.sqrt(1. + 4. * f) - 1.)/(2. * f)
xe2 = low + (1. - low) * xe
dv = xe2 * (1 + z)**0.5
# xti = np.array([0.25, 0.3, 0.35, 0.4])

ax.tick_params(which="major", direction="in", length=10.)
ax.tick_params(which="minor", direction="in", length=5.)

ax.set_xlim(x_min, x_max)
# ax.set_ylim(0., 1.1)

ax.set_xscale("log")
ax.set_yscale("log")

ax.set_xlabel(r"$\mathcal{Z}$")
ax.set_ylabel(r"$\frac{\text{d}\tau}{\text{d}\mathcal{Z}}$", rotation="horizontal", fontsize='x-large')
ax.plot(z, xe2[0]*(1 + z)**0.5, "--" ,color="gray")
ax.plot(z, xe2[-1]*(1 + z)**0.5, "--" ,color="gray")
ax.plot(z, dv, "-" ,color="black")

ax.text(3000, 0.06, r"$(1+\mathcal{Z})^{\frac{1}{2}}$", fontsize='small', rotation=10)
ax.text(300, 20, r"$(1+\mathcal{Z})^{\frac{1}{2}}$", fontsize='small', rotation=10)
ax.grid()
# ax.legend()

fig.savefig("3-9_vis_deriv.pdf", bbox_inches="tight")
