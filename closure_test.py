
# global variable
num = 10

def closure_test():
    # 0...9 generator
    x = (i for i in range(10))

    def _closure_test():
        return sum(x) * num
    return _closure_test

if __name__ == "__main__":
    function = closure_test()
    num = 20
    print(function())
