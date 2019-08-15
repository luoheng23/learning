
(lambda x: print(x))(2)

f = lambda x:lambda y: x & y

x = 1 << 5
t = f(x)
print(t(0))
print(t(32))

def f(x):
    def s(y):
        return x & y
    return s