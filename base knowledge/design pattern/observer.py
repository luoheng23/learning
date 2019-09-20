# observer pattern can work with decorator pattern


class Observer:
    def __init__(self, num):
        self.num = num

    def notify(self):
        print(f"{self.num} see dog is flying")


def observer(observers):
    def decorator(fn):
        def dec(*arg, **args):
            fn(*arg, **args)
            for observer in observers:
                observer.notify()
        return dec
    return decorator


observers = [Observer(i) for i in range(10)]


@observer(observers)
def dog():
    print("dog is flying...")


def main():
    dog()


if __name__ == "__main__":
    main()
