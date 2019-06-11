
def f():
    print(a)

try:
    f()
except Exception as e:
    print(e)

a = 2
f()
