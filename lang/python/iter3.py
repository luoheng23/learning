
class A:
    def __init__(self):
        self.array = [1, 2, 3, 4, 5]
    

    def __getitem__(self, i):
        return self.array[i]

    def __iter__(self):
        return [1, 2, 3, 4].__iter__()

for i in A():
    print(i)
