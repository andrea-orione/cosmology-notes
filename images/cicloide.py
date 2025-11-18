import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

thetac = np.linspace(0, 2. * np.pi, 500)
tc = thetac - np.sin(thetac)
ac = 1 - np.cos(thetac)
thetao = np.linspace(0., 2. * np.pi, 500)
to = - thetao + np.sinh(thetao)
ao = - 1 + np.cosh(thetao)
tp = np.linspace(0., 10., 500)
ap = (6. * tp)**(2./3.) * 0.5

fig, ax = plt.subplots()

ax.tick_params(which="major", direction="in", length=10.)

ax.set_xlim(0., 7.)
ax.set_ylim(0., 6.)

ax.set_xlabel("$t$")
ax.set_ylabel("$a(t)$")

ax.set_xticklabels([])
ax.set_yticklabels([])

ax.plot(tc, ac, color="black", ls ="-", label="$K>0$")
ax.plot(tp, ap, color="black", ls ="-.", label="$K=0$")
ax.plot(to, ao, color="black", ls ="--", label="$K<0$")

ax.text(5.2, 1.5, "$K > 0$")
ax.text(4.7, 4.1, "$K = 0$")
ax.text(2.3, 4.7, "$K < 0$")

# ax.legend()
ax.grid()

fig.savefig("2-2_cicloide.pdf", bbox_inches="tight")
