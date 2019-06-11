
class A:
    def __iter__(self):
        return [1, 2, 3, 4, 5]

class B:
    def __iter__(self):
        return [1, 2, 3, 4, 5].__iter__()

try:
    for a in A():
        print(a)
except Exception as e:
    print(e)

for b in B(): 
    print(b)