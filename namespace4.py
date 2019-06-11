
a = 4

def f():
    try:
        print(a)
    except Exception as e:
        print(e)
    a = 1

f()