
def generator_test():
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

if __name__ == "__main__":
    generator_test()