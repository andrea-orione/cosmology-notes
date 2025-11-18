import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

fig, ax = plt.subplots()

a1 = np.linspace(1e-5, 1e-3, 500)
a2 = np.linspace(1e-3, 1e-1, 500)
a3 = np.linspace(1e-1, 2, 500)
mat1 = a1**(-3)
mat2 = a2**(-3)
mat3 = a3**(-3)
rad1 = a1**(-4)
rad2 = a2**(-4)
rad3 = a3**(-4)
cur1 = a1**(-2)
cur2 = a2**(-2)
cur3 = a3**(-2)

ax.tick_params(which="major", direction="in", length=10.)
ax.tick_params(which="minor", direction="in", length=5.)

ax.set_xlim(7e-5, 1)
ax.set_ylim(1e-3, 1e12)

ax.set_xlabel("Scale factor $a(t)$")
ax.set_ylabel("$\\log_{10} [\\rho (t)/\\rho_{c0}]$")

ax.set_xscale("log")
ax.set_yscale("log")

ax.plot(a1, 0.1 * mat1, "-" ,color="grey")
ax.plot(a2, 0.1 * mat2, "-" ,color="black", label="matter")
ax.plot(a3, 0.1 * mat3, "-" ,color="grey")
ax.text(1e-2, 2e5, "Matter")
ax.plot(a1, 0.0001 * rad1, "--", color="black", label="radiation")
ax.plot(a2, 0.0001 * rad2, "--", color="grey")
ax.plot(a3, 0.0001 * rad3, "--", color="grey")
ax.text(4e-4, 7e9, "Radiation")
ax.plot(a1, 1 * cur1, "-.", color="grey")
ax.plot(a2, 1 * cur2, "-.", color="grey")
ax.plot(a3, 1 * cur3, "-.", color="black", label="$K$")
ax.text(4e-1, 2e1, "$K$")

ax.plot([1e-3, 1e-3],[1e4, 4e7], '-', color="black")
ax.plot([1e-3],[4e7],'^',color="black")
ax.text(8e-4, 2.2e3, "$a_{eq}$")

ax.grid()
# ax.legend()

fig.savefig("1-1_evoluzione_specie.pdf", bbox_inches="tight")
