import numpy as np
import matplotlib.pyplot as plt

# Fixing random state for reproductibility 
np.random.seed(np.random.randint(1,20000000))

N = 50
x = np.random.rand(N)
y = np.random.rand(N)
colors = np.random.rand(N)
area = (30 * np.random.rand(N))**2 # 0 to 15 point radii

plt.scatter(x, y, s=area, c=colors, alpha=0.5)
plt.show()