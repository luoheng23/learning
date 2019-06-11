
def fn():
    print("call fn")

def count(fn):
    i = [0]
    def s(*arg):
        i[0] += 1
        print(f"times: {i[0]}")
        fn(*arg)
    return s

fn = count(fn)
for _ in range(5):
    fn()