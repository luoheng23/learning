
class A:
    def __get__(self, obj, cls):
        return f"{obj}: get"

    def __set__(self, obj, value):
        print(f"{obj}: set, {value}")

class B:
    value = A()

    def __init__(self):
        self.value = 4

def main():
    g = B()
    print(g.value)
    print(g.__dict__)

if __name__ == "__main__":
    main()
