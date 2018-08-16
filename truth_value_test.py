class A(object):
    def __init__(self):
        self.value = 0

if __name__ == "__main__":
    a = A()
    print(hash(a))
    if a:
        print("a,", dir(a), True)
    else:
        print("a, ", dir(a), False)