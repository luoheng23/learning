
import time
from matplotlib import pyplot as plt

class A:
    def test(self):
        pass

    def test1(self):
        print("hello")
    
    def test2(self):
        print("world")

def bound():
    a = A()
    a.test1()
    A.test1 = A.test2
    a.test1()


def one_loop(limited_time):
    a = A()
    f = a.test
    t1 = time.time()
    for i in range(limited_time):
        f()
    t = time.time()-t1
    t1 = time.time()
    for i in range(limited_time):
        a.test()
    s = time.time()-t1
    return t, s


def test_bound():
    x = range(10)
    l_time = (10**i for i in x)
    yy = [one_loop(i) for i in l_time]
    y1 = [t[0] for t in yy]
    y2 = [t[1] for t in yy]
    print([y2[i]-y1[i] for i in range(len(y1))])
    print([(y2[i]-y1[i])/y2[i] if y2[i] != 0 else (y2[i]-y1[i]) for i in range(len(y1))])
    plt.plot(x, y1, x, y2)
    plt.show()


if __name__ == "__main__":
    # test_bound()
    bound()