import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans"

fig, ax = plt.subplots()

ax.tick_params(which="major", direction="in", length=10.)

x1 = np.linspace(0,0.99,500)
x2 = np.linspace(1.01,3,500)
y1m = 0.5 * x1**(2/3)
y2m = 0.5 * x2**(2/3)
y1r = 0.5 * x1**(1/2)
y2r = 0.5 * x2**(1/2)

ax.set_xlabel("$t$")
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_ylabel("$a(t)$")
ax.plot(x1, y1m, color="grey", ls ="-")
ax.plot(x2, y2m, color="black", ls = "-", label="Matter")
ax.plot(x1, y1r, color="black", ls = "--", label="Radiation")
ax.plot(x2, y2r, color="grey", ls = "--")

ax.set_xlim(0.,3)
ax.set_ylim(0.,1)

ax.grid()
ax.legend()

fig.savefig("1-2_evoluzione_scala.pdf", bbox_inches="tight")
