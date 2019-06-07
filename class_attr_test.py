class A:
    work = list("hello")
    kind = list("world")

    def test1(self):
        print(self.work, self.kind)
        self.work[0], self.kind [0] = "t", "t"
        print(self.work, self.kind)
    
    def test2(self):
        A.work, A.kind = "hello", " world"
        print(self.work, self.kind)
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
