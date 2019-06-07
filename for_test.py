
def for_test():
    x = list(range(10))
    for index, value in enumerate(x):
        print("delete:", x)
        print("index:", index, "value:", value)
        if index == 5:
            x[:] = [10]
    print("x:", x)

def for_test2():
    x = list(range(10))
    j = 10
    for i in x:
        print(i)
        x.append(j)
        j += 1

if __name__ == "__main__":
    for_test2()