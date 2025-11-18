import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

n_lat = 15
n_long = 20

longs = np.linspace(0., 2.*np.pi, n_long+1)
lats = np.linspace(0., 0.5 * np.pi, n_lat+1)

xs_long = [np.linspace(0, 1, 500) * np.cos(phi) for phi in longs[:-1]]
ys_long = [np.linspace(0, 1, 500) * np.sin(phi) for phi in longs[:-1]]

xs_lat = [np.cos(theta) * np.cos(np.linspace(0., 2. * np.pi, 500)) for theta in lats[:-1]]
ys_lat = [np.cos(theta) * np.sin(np.linspace(0., 2. * np.pi, 500)) for theta in lats[:-1]]

fig, ax = plt.subplots()

ax.set_axis_off()

for x,y in zip(xs_long, ys_long):
    ax.plot(x, y, color="black", linewidth=0.5)

for x,y in zip(xs_lat, ys_lat):
    ax.plot(x, y, color="black", linewidth=0.5)

fig.savefig("2-1_parametrizzazione_sfera_b.pdf", bbox_inches="tight")
