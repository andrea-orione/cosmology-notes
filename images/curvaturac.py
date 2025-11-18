import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

n_lat = 15
n_long = 20

longs = np.linspace(0., 2.*np.pi, n_long+1)
phis = (longs[1:] + longs[:-1]) * 0.5
delphi = longs[1] - longs[0]
lats = np.linspace(1.e-5, 0.5 * np.pi, n_lat+1)

fig, ax = plt.subplots()
ax.set_axis_off()

for phi in phis:
    t = np.linspace(1e-5, lats[-1], 500)
    xa = t * np.cos(phi + delphi * 0.5 * np.sin(t)/t)
    ya = t * np.sin(phi + delphi * 0.5 * np.sin(t)/t)
    xb = t * np.cos(phi - delphi * 0.5 * np.sin(t)/t)
    yb = t * np.sin(phi - delphi * 0.5 * np.sin(t)/t)

    ax.plot(xa, ya, color="black", linewidth=0.5)
    ax.plot(xb, yb, color="black", linewidth=0.5)

    for theta in lats:
        p = np.linspace(phi - delphi * 0.5 * np.sin(theta)/theta, phi + delphi * 0.5 * np.sin(theta)/theta, 100)

        x = theta * np.cos(p)
        y = theta * np.sin(p)
        ax.plot(x, y, color="black", linewidth=0.5)

fig.savefig("2-1_parametrizzazione_sfera_c.pdf", bbox_inches="tight")
