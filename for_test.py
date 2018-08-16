
def for_test():
    x = [i for i in range(10)]
    for index, value in enumerate(x):
        print("index:", index, "value:", value)
        del x[index]

if __name__ == "__main__":
    for_test()