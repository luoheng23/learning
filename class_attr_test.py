class A:
    work = list("hello")
    kind = list("world")
    another = 1

    def test1(self):
        print(self.work, self.kind, self.another)
        self.work[0], self.kind [0] = "t", "t"
        self.another += 1
        print(A.work, A.kind, A.another)
    
    def test2(self):
        A.work, A.kind = "hello", " world"
        A.another += 2
        print(self.__dict__)
        print(self.work, self.kind, self.another)
        A.test2 = 13
        print(self.test2)


    def test3(self):
        print(self.__dict__)
        self.w, self.k = 0, 1
        print(self.__dict__)
        self.work, self.kind = 4, 4
        print(self.__dict__)
        self.test1 = 12
        print(self.__dict__)
        try:
            self.test1()
        except:
            print("test1 is not a bound method")


if __name__ == "__main__":
    a = A()
    a.test1()
    a.test2()
    a.test3()
