a = 1

def f():
    a = 2
    def g():
        global a
        print(a)
        a += 1
    return g

g = f()
g()
print(a)