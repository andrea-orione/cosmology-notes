import numpy as np
import matplotlib.pyplot as plt

N_SYM = 500
N_STEPS = 100

steps = np.random.choice([-1, 1], size=(N_SYM, N_STEPS))
poss = np.cumsum(steps, axis=1)

# 1. Create the X-axis array and append a NaN at the end of the steps
ts = np.arange(N_STEPS, dtype=float)
ts_with_nan = np.append(ts, np.nan)
# Tile it so it repeats for every simulation
ts_flat = np.tile(ts_with_nan, N_SYM)

# 2. Append a column of NaNs to the Y-axis data and flatten it
nan_col = np.full((N_SYM, 1), np.nan)
poss_flat = np.hstack((poss, nan_col)).flatten()

# 3. Plot everything as a SINGLE line. The NaNs act as invisible pen lifts!
plt.plot(ts_flat, poss_flat, color='black', alpha=1)
plt.savefig("prova_massive.pdf")
