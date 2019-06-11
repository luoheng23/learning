
a = 1

def f():
    a = 2
    def b():
        print(a)
    return b

b = f()
b()
