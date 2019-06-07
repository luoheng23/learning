
class A:
    def test1(self):
        print(self)

    def test2():
        print("hello")
    
    def test3(solf):
        print(solf)
    
    @classmethod
    def test4(self):
        print(f"classmethod: {self}")
    
    @staticmethod
    def test5(self):
        print(f"staticmethod: {self}")

class B:
    pass
def main():
    a = A()
    a.test1()
    A.test1(a)
    A.test1(2)
    try:
        a.test2()
    except Exception as e:
        print(e)
    b = B()
    A.test3(b)
    a.test4()
    A.test4()
    a.test5(2)
    A.test5(2)


if __name__ == "__main__":
    main()