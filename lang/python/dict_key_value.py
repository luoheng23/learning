
t = list(range(10))
b = t[:]
d = dict(zip(t, b))
print(list(d.items()))