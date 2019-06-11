
class A:
    def s1(self):
        print("good")
    def s2(fn):
        print("hello")
        fn()

a = A()
a.s1(lambda: 2)