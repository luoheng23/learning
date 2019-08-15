
a = 1

def f():
    a = 2
    def b():
        print(a)
    b()

f()