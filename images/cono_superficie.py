import matplotlib.pyplot as plt
from matplotlib.patches import Ellipse
import numpy as np

plt.rcParams['font.size'] = 14
plt.rcParams['mathtext.fontset'] = "dejavusans" # dejavuserif or dejavusans

fig, ax = plt.subplots()
ax.set_aspect("equal")
ax.set_axis_off()

theta = np.pi / 3
dtheta = np.pi / 20
r = 2

# SURFACE
dy = 0.2
x = 1.
dx = 0.2
ax.plot([-x-dx,+x-dx],[-dy,-dy], color="black", linewidth=0.5)
ax.plot([-x+dx,+x+dx],[+dy,+dy], color="black", linewidth=0.5)
ax.plot([-x+dx,-x-dx],[+dy,-dy], color="black", linewidth=0.5)
ax.plot([+x-dx,+x+dx],[-dy,+dy], color="black", linewidth=0.5)
ax.text(0.5, -0.1, "d$S$")

# ARROW
ax.plot([0,0],[0,0.5], color="black")
ax.plot([0],[0.5],'^',color="black")
ax.text(0.05, 0.46, "$\\hat{n}$")

# CONE
x = - r * np.cos(theta + dtheta)
y = + r * np.sin(theta + dtheta)
mx = x
my = y
ax.plot([0,x],[0,y], color="black", linewidth=0.5)
x = - r * np.cos(theta - dtheta)
y = + r * np.sin(theta - dtheta)
mx += x
my += y
ax.plot([0,x],[0,y], color="black", linewidth=0.5)
mx *= 0.5
my *= 0.5
w = 4*  r * np.sin(dtheta/2)
ellipse = Ellipse(xy = (mx,my), width=w, height=w/5, angle=30, fill=False, linewidth=0.5)
ax.add_patch(ellipse)
ax.plot([0,mx],[0,my], "--", color="black", linewidth=0.5)
ax.text(mx - 0.15, my + 0.01, "d$\\Omega$")

# ANGLE
thetas = np.linspace(theta, np.pi/2, 100)
r = 0.5
x = - r * np.cos(thetas)
y = + r * np.sin(thetas)
ax.plot(x,y, color="black", linewidth=0.5)
ax.text(-0.16, 0.52, "$\\theta$")



ax.text(-1.25, 0.8, "$R = |v|$d$t$")


fig.savefig("3-1_cono_superficie.pdf", bbox_inches="tight")
