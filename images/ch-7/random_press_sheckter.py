import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

N_SYM = 100000
N_STEPS = 100
M_HALO = 13
N_VIS = 20 # Number of path visualized

# ---------------------------------
# SIMULATION
# ---------------------------------
print("Generating random wolks")
steps = np.random.choice([-1, 1], size=(N_SYM, N_STEPS))
poss = np.cumsum(steps, axis=1)

end_pos = poss[:,-1]
boring = poss[poss.max(axis=1) < M_HALO,:]
halo = poss[end_pos >= M_HALO,:]
halo_end = halo[:,-1]
returned = poss[(poss.max(axis=1) >= M_HALO) & (end_pos < M_HALO),:]
returned_end = returned[:,-1]

# ---------------------------------
# TIME SERIES PLOTTING
# ---------------------------------
print("Selecting which are visualized")
vis_mask = np.random.rand(N_SYM) < (N_VIS/N_SYM)
poss_vis = poss[vis_mask,:]
end_vis = poss_vis[:,-1]
halo_vis = poss_vis[end_vis >= M_HALO,:]
halo_vis = np.concatenate((halo_vis, halo[:1,:]))
ret_vis = poss_vis[(poss_vis.max(axis=1) >= M_HALO) & (end_vis < M_HALO),:]
ret_vis = np.concatenate((ret_vis, returned[:1,:]))
boring_vis = poss_vis[poss_vis.max(axis=1) < M_HALO]
n_sym_vis = poss_vis.shape[0]

# Create time series with nan at the end and tile n_sym_vis times
ts = np.arange(N_STEPS, dtype=float)
ts_with_nan = np.append(ts, np.nan)
ts_flat = np.tile(ts_with_nan, n_sym_vis)

# Append a column of nan to positions and flatten it
nan_col = np.full((n_sym_vis, 1), np.nan)
poss_flat = np.hstack((poss_vis, nan_col)).flatten()

print("Setting up time plot")
img, (ax_time, ax_distr) = plt.subplots(ncols=2, width_ratios=[5,1], sharey=True)
plt.subplots_adjust(wspace=0.15)

ax_time.spines["top"].set_visible(False)
ax_time.spines["right"].set_visible(False)

ax_time.spines["bottom"].set_position('zero')
ax_time.spines["left"].set_position('zero')
ax_time.plot((1), (0), ls="", marker=">", ms=4, color="k", transform=ax_time.get_yaxis_transform(), clip_on=False)
ax_time.plot((0), (1), ls="", marker="^", ms=4, color="k", transform=ax_time.get_xaxis_transform(), clip_on=False)

ax_time.set_xlabel("$t$", loc="right")
ax_time.set_ylabel(r"$\delta_M$", loc="top", labelpad=-20, rotation="horizontal")


ax_time.tick_params(axis='x', bottom=False, top=False, labelbottom=False)
ax_time.tick_params(axis='y', direction="inout")

ax_time.set_xlim(0.0, N_STEPS*1.03)

x_mass = np.array([0.0, N_STEPS*1.01])
y_mass = np.full(2, M_HALO)


print("Plotting time series")
lw = 0.7
# ax_time.plot(ts_flat, poss_flat, color="black", lw=lw)
ax_time.plot(ts, boring_vis.T, color="black", lw=lw, alpha=0.6)
ax_time.plot(ts, halo_vis.T, color="blue", lw=lw*1.3)

ax_time.plot(x_mass, y_mass, ls="--", color="black", lw=lw)

# ---------------------------------
# DISTRIBUITION PLOTTING
# ---------------------------------
print("Setting up distribution plot")
# ax_distr.invert_xaxis()

ax_distr.spines["top"].set_visible(False)
ax_distr.spines["right"].set_visible(False)
ax_distr.spines["bottom"].set_position('zero')
ax_distr.spines["left"].set_position('zero')
ax_distr.plot((0), (1), ls="", marker="^", ms=4, color="k", transform=ax_distr.get_xaxis_transform(), clip_on=False)

ax_distr.set_ylabel(r"$\delta_M$", loc="top", labelpad=-20, rotation="horizontal")

ax_distr.tick_params(axis='x', bottom=False, top=False, labelbottom=False)
ax_distr.tick_params(axis='y', which='both', labelleft=True, labelright=False, direction="inout")
ax_distr.set_yticks([-M_HALO, 0, M_HALO], labels=[r"$-\delta_c$", "0", r"$\delta_c$"])

print("Plotting complete distribution")
binw = 2
n_above = int(np.ceil(end_pos.max()/binw))
n_below = int(np.ceil(np.abs(end_pos.min())/binw))
max_above =  (n_above + 0.5) * binw
min_below = -(n_below + 0.5) * binw
made_bins = np.linspace(min_below, max_above, n_below+n_above+2)

counts, bins, _ = ax_distr.hist(end_pos, bins=list(made_bins), color="black" ,alpha=0.6, orientation="horizontal")

print("Plotting passed distribution")
_, _, _ = ax_distr.hist(halo_end, bins=list(bins), color="blue", alpha=1, orientation="horizontal")


print("Plotting gaussian distribution")
area = np.sum(counts * np.diff(bins))
std_dev = np.sqrt(N_STEPS)

x_norm = np.linspace(bins[0], bins[-1], 100)
y_norm = area*norm.pdf(x_norm, scale=std_dev)
x_norm2 = x_norm+2*M_HALO
y_norm2 = area*norm.pdf(x_norm, loc=2*M_HALO, scale=std_dev)

ax_distr.plot(y_norm, x_norm, color="black", lw=lw)

x_mass = np.array([0.0, counts.max()*1.1])
y_mass = np.full(2, M_HALO)

ax_distr.plot(x_mass, y_mass, ls="--", color="black", lw=lw)

ax_time.set_ylim(x_norm.min()*.7, x_norm.max()*.7)
print("Saving noreturn figure")
img.savefig("random_walk_noreturn.pdf", bbox_inches="tight")

# ---------------------------------
# PLOTTING RETURN
# ---------------------------------
print("Plotting returned stuff")
ax_time.set_ylim(x_norm.min()*.7, x_norm.max())
ax_time.plot(ts, ret_vis.T, color="red", lw=lw*1.3)
_, _, _ = ax_distr.hist(returned_end, bins=list(bins), color="red", alpha=1, orientation="horizontal")
ax_distr.plot(x_mass, 2.*y_mass, ls="-.", color="black", lw=lw)
ax_distr.plot(y_norm2, x_norm, color="black", lw=lw)
ax_distr.set_yticks([-M_HALO, 0, M_HALO, 2*M_HALO], labels=[r"$-\delta_c$", "0", r"$\delta_c$", r"$2\delta_c$"])

print("Saving return figure")
img.savefig("random_walk_return.pdf", bbox_inches="tight")

print("Saving simulation data")
np.savetxt('random_walk.csv', poss, delimiter=',')
