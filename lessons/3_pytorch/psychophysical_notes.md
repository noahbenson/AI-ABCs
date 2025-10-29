---
orphan: true
---

# Notes about the Psychophysical Dataset in Lesson 3

The "psychophysical data" used in the Numerical Optimization lesson was
generated using the following Python code block:

```python
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# How much data did we collect for this subject?
n_contrasts = 25
n_meas = 8  # (8 independent measurements per unique contrast)

# What are the actual parameters of our model?
# probability(c; a, c0) = sigmoid(a*(c - c0))
def prob(c, a, c0):
    return 1 / (1 + np.exp(-a * (c - c0)))
a = 0.12
c0 = 42

c = np.linspace(0, 100, n_contrasts)
p_true = prob(c, a, c0)
draws = np.random.rand(n_meas, n_contrasts) < p_true

df = pd.DataFrame(
    {'contrast': np.concatenate([c] * n_meas, 0),
     'correct_response': draws.flat})

# Shuffle the dataframe:
df = df.iloc[np.random.choice(range(len(df)), len(df), replace=False), :]
df = df.reset_index().drop(columns='index')
df.to_csv('psychophysical_data.csv', index=False)
```
