
class A:
    def __hash__(self):
        return 2
    
    def __eq__(self, other):
        return True

a = A()
b = A()
d = {a:0}
if b in d:
    print(d[b])
else:
    print("b is not in d")
