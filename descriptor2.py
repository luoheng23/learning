from functools import partial

class Staticmethod:

    def __init__(self, method):
        self.method = method

    def __get__(self, obj, cls):
        return self.method

class Classmethod:

    def __init__(self, method):
        self.method = method
    
    def __get__(self, obj, cls):
        return partial(self.method, cls)



class A:

    @Staticmethod
    def f(self):
        print(f"I'm method f, the value is {self}")
    
    @Classmethod
    def c(self):
        print(f"my class is {self}")

a = A()
a.f(23)
A.f(23)
a.c()
A.c()
