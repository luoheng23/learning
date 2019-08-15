class A(list):
    def show(self):
        print("A::show")

class B(list):
    def show(value):
        print("B::show")

class C(A):
    pass

class D(C, B):
    pass

d = D()
d.show()

print(dir(d))
print(dir(D))
print(dir(d) == dir(D))
print(D.__mro__)
print(D.mro())
print(D.__subclasses__())
