
class A:
    def __iter__(self):
        return B()

class B:
    def __init__(self):
        self.i = 0
        self.n = 5
    def __next__(self):
        if self.i < self.n:
            self.i += 1
            return self.i
        raise StopIteration

for i in A():
    print(i)