:orphan:

# Notes about Lesson 1

## Moth Data

The "moth data" used in the Principal Components lecture is artificial and was
generated using the following Python code block:

```python
%matplotlib inline

# This code-block generates random data-points and makes a set of plots in
# line with the textual description of the notebook.
# Understanding this code-block is not required to understand the lesson.

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

n = 1000
seed = 0

np.random.seed(seed)
x0 = np.random.randn(n)*1.41 # + 18
y0 = np.random.randn(n)*1.28 # + 7
z0 = np.random.randn(n)*0.06 # + 4
coords0 = np.stack([x0, y0, z0], axis=0)
coords = np.dot(
    [[0.408248, -0.816497, 0.408248],
     [0.816497, 0.526599, 0.236701],
     [-0.408248, 0.236701, 0.88165]],
    coords0)
coords += [[18], [7], [4]]

df = pd.DataFrame(
    {'reniform_size':  coords[0],
     'claviform_size': coords[1],
     'orbicular_size': coords[2]})
df.to_csv('moth_data.csv', index=False)
```
