
import time


def times(fn):
    def func(*arg, **args):
        t1 = time.time()
        fn(*arg, **args)
        t2 = time.time()
        print(t2 - t1)
    return func


@times
def insertionSort(A):
    if len(A) <= 1:
        return A
    for i in range(1, len(A)):
        j = i - 1
        key = A[j]
        while j > 0 and A[j] > key:
            A[j+1] = A[j]
            j -= 1
        A[j+1] = key


def main():
    A = list(reversed(range(10000000)))
    insertionSort(A)


if __name__ == "__main__":
    main()
