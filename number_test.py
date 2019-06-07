
import os
import zlib
from multiprocessing import Pool

def f(x):
    return x * x

def test1():
    with Pool(5) as p:
        print(p.map(f, [1, 2, 3, 4, 5, 6]))

def test2():
    print(list(map(f, [1, 2, 3, 4, 5, 5])))

if __name__ == "__main__":
    pass