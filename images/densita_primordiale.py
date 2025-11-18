import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

x_max = 50
x = np.linspace(1e-5,x_max,5000)
y1 = x**(3/2)
y2 = np.exp(-1/x)
y3 = y1*y2

fig, ax = plt.subplots()

ax.set_xscale("log")
ax.set_yscale("log")

# ax.tick_params(which="major", direction="in", length=10.)

ax.set_xlim(3e-2, x_max)
ax.set_ylim(1e-10, y1[-1])

ax.set_xlabel("$T$")
ax.set_ylabel("$n_s(T)$")

# ax.set_xticklabels([])
# ax.set_yticklabels([])

ax.plot(x, y1, color="black", ls ="-.", label=r"$T^{\frac{3}{2}}$")
ax.plot(x, y2, color="black", ls ="--", label=r"$\exp{\{-\frac{1}{T}\}}$")
ax.plot(x, y3, color="black", ls ="-", label=r"$T^{\frac{3}{2}}\exp{\{-\frac{1}{T}\}}$")

# xb, xe, yb, ye = 0,0.2, 0,0.0025
# axin = ax.inset_axes((0.02, 0.5, 0.49, 0.48), xlim=(xb,xe), ylim=(yb, ye), xticklabels=[], yticklabels=[])
# axin.plot(x, y1, color="black", ls ="-.")
# axin.plot(x, y2, color="black", ls ="--")
# axin.plot(x, y3, color="black", ls ="-")
# axin.grid()
#
ax.legend(loc=(0.6,0.1))
ax.grid()

fig.savefig("3-2_densita_primordiale.pdf", bbox_inches="tight")
