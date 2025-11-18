import matplotlib.pyplot as plt
import numpy as np
import scipy as sp

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

fig, ax = plt.subplots()

ETA = 6e-10
I_H = 13.6057
x_start = 0.265
x_end = 0.365

t = np.linspace(0.1, 0.5, 500)
f = 2.*sp.special.zeta(3)/(np.pi**2) * ETA * (2 * np.pi * t/510_999)**1.5 * np.exp(I_H/t)
xe = (np.sqrt(1. + 4. * f) - 1.)/(2. * f)
xti = np.array([0.25, 0.3, 0.35, 0.4])

ax.tick_params(which="major", direction="in", length=10.)
ax.tick_params(which="minor", direction="in", length=5.)

ax.set_xlim(0.18, 0.42)
ax.set_ylim(0., 1.1)

ax.set_xlabel("$T$ [eV]")
ax.set_ylabel("$x_e$")
ax.plot(t, xe, "-" ,color="black")

ax.plot(t,np.ones_like(t), '--', color="gray")
ax.plot(np.full(2, x_start),[-1,2], '-.', color="gray")
ax.plot(np.full(2, x_end),[-1,2], '-.', color="gray")

# ax.grid()
# ax.legend()

fig.savefig("3-7_conc_elett.pdf", bbox_inches="tight")
