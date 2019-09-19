class Product:
    def produce(self):
        pass
    def sell(self):
        pass

class House(Product):
    def produce(self):
        print("House produce...")
    def sell(self):
        print("House sell...")

class Clothes(Product):
    def produce(self):
        print("Clothes produce...")
    def sell(self):
        print("Clothes sell...")

class IPod(Product):
    def produce(self):
        print("IPod produce...")
    def sell(self):
        print("IPod sell...")

class Crop:
    def __init__(self, product):
        self.product = product
    def makeMoney(self):
        self.product.produce()
        self.product.sell()

class HouseCrop(Crop):
    def __init__(self, house):
        super().__init__(house)

class ShanZhaiCrop(Crop):
    def __init__(self, product):
        super().__init__(product)

def client():
    house = House()
    houseCrop = HouseCrop(house)
    houseCrop.makeMoney()

    sz = ShanZhaiCrop(IPod())
    sz.makeMoney()
    sz = ShanZhaiCrop(Clothes())
    sz.makeMoney()

if __name__ == "__main__":
    client()
