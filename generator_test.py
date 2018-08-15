
# global variable
num = 10

def closure_test():
    # 0...9 generator
    x = (i for i in range(10))

    def _closure_test():
        return sum(x) * num
    return _closure_test

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



if __name__ == "__main__":
    generator_test1()
    generator_test2()
    function = closure_test()
    num = 20
    print(function())
