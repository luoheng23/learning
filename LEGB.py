
import sys

a = 1

frame = sys._getframe()
print(frame.f_locals)

def t():
    frame = sys._getframe()
    print(frame.f_locals)
    print(a)
    a = 3
    print(a)

t()
print(a)