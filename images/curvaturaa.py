from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Define sphere parameters
radius = 0.999
phi = np.linspace(0, np.pi, 100)
theta = np.linspace(0, 2 * np.pi, 100)
phi, theta = np.meshgrid(phi, theta)

# Convert spherical to Cartesian coordinates
x = radius * np.sin(phi) * np.cos(theta)
y = radius * np.sin(phi) * np.sin(theta)
z = radius * np.cos(phi)

# Create the 3D plot
ax.plot_surface(x, y, z, color='white', alpha=0.)
ax.set_box_aspect((1, 1, 1))  # Ensures the sphere appears round

n_lat = 15
n_long = 20

longs = np.linspace(0., 2.*np.pi, n_long+1)
lats = np.linspace(0., 0.5 * np.pi, n_lat+1)

xs_long = [np.sin(np.linspace(0., 0.5 * np.pi, 500)) * np.cos(phi) for phi in longs[:-1]]
ys_long = [np.sin(np.linspace(0., 0.5 * np.pi, 500)) * np.sin(phi) for phi in longs[:-1]]
zs_long = [np.cos(np.linspace(0., 0.5 * np.pi, 500)) for _ in longs[:-1]]

xs_lat = [np.sin(theta) * np.cos(np.linspace(0, 2.*np.pi, 500)) for theta in lats[1:]]
ys_lat = [np.sin(theta) * np.sin(np.linspace(0, 2.*np.pi, 500)) for theta in lats[1:]]
zs_lat = [np.cos(theta) for theta in lats[1:]]

ax.set_axis_off()

for x,y,z in zip(xs_long, ys_long, zs_long):
    ax.plot3D(x, y, z, color="black", linewidth=0.5)

for x,y,z in zip(xs_lat, ys_lat, zs_lat):
    ax.plot3D(x, y, z, color="black", linewidth=0.5)

plt.show()
# fig.savefig("2-1_parametrizzazione_sfera_a.pdf", bbox_inches="tight")
