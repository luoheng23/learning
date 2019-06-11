def f():
    a = 1
class A:
    b = 2
if 1 == 1:
    c = 3
for _ in range(1):
    d = 4
while True:
    e = 5
    break
print(c, d, e)
try:
    print(a)
except Exception as e:
    print(e)
try:
    print(b)
except Exception as e:
    print(e)
