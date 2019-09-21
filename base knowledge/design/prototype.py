
class Dog:
    def __init__(self):
        self.legs = [1, 1, 1, 1]
    def clone(self):
        d = Dog()
        d.legs = self.legs[:]
        return d

def main():
    dog1 = Dog()
    dog2 = dog1.clone()
    dog1.legs[1] = 2
    if dog1.legs == dog2.legs:
        print("clone failed.")

if __name__ == "__main__":
    main()
