def generator_test1():
    # 0...9 generator
    x = (i for i in range(10))
    # 5..9 generator
    x_filter = filter(lambda y: y >= 5, x)
    # first use the x
    L = list(x)
    print("L, x", L)
    # then use x_filter
    l = list(x_filter)
    print("l, x_filter", l)

def generator_test2():
    x = (i for i in range(10))
    for i in range(10):
        x = (j + i for j in x)
    L = list(x)
    print("L, x", L)

def generator_test3():
    x = (i for i in range(10))
    for i in range(10):
        x = (j + i for j in x)
    i = 20
    L = list(x)
    print("L, x", L)

def generator_test4():
    x = (i for i in range(10))
    for i in range(10):
        x = (j + i for j in x)
    def _generator_test4(x):
        i = 20
        L = list(x)
        print("L, x", L)
    _generator_test4(x)

def generator_test5():
    x = (i for i in range(10))
    for i in range(10):
        x = (j + i for j in x)
    def _generator_test4(x):
        return x
    x = _generator_test4(x)
    i = 20
    L = list(x)
    print("L, x", L)

def generator_test6():
    x = 10
    g = (x for i in range(10))
    print(next(g))
    x = 20
    print(next(g))
    x = 30
    print(next(g))

if __name__ == "__main__":
    generator_test1()
    generator_test2()
    generator_test3()
    generator_test4()
    generator_test5()
    generator_test6()
