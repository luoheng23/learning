
class A:
    def test_hello(self):
        print("hello")

def test_world(self):
    print("world")

def main():
    s = A()
    # 提前绑定
    f = s.test_hello
    # 改变方法
    A.test_hello = test_world
    f()
    # 动态绑定
    s.test_hello()

if __name__ == "__main__":
    main()