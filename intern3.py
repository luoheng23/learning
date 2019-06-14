
i = "1 2"
j = "12"
k = "__fjdslfjaskfas"

ii = "1 2"
jj = "12"
kk = "__fjdslfjaskfas"

def f():
    a = "1 2"
    b = "12"
    c = "__fjdslfjaskfas"
    return a is i, b is j, c is k

print("Code:", i is ii, j is jj, k is kk)
print(f"intern: {f()}")