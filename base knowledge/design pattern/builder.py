
# this is template pattern
class CarModel:
    def __init__(self, sequence):
        self.seq = sequence
    def start(self):
        pass
    def alarm(self):
        pass
    def engineBoom(self):
        pass
    def run(self):
        for i in self.seq:
            i = i.lower()
            if i == "start":
                self.start()
            elif i == "stop":
                self.stop()
            elif i == "alarm":
                self.alarm()
            elif i == "engine boom":
                self.engineBoom()

class BenzModel(CarModel):
    def start(self):
        print("benz start...")
    def alarm(self):
        print("benz alarm...")
    def engineBoom(self):
        print("benz engine boom...")
    def stop(self):
        print("benz stop...")

class BmwModel(CarModel):
    def start(self):
        print("bmw start...")
    def alarm(self):
        print("bmw alarm...")
    def engineBoom(self):
        print("bmw engine boom...")
    def stop(self):
        print("bmw stop...")

# Builder is to builder a class that has specific construct order.
class CarBuilder:
    def setSequence(self, seq):
        pass
    def getCarModel(self):
        pass

class BenzBuilder(CarBuilder):
    def __init__(self):
        self.benz = None
    def getCarModel(self):
        return self.benz
    def setSequence(self, seq):
        self.benz = BenzModel(seq)

class BmwBuilder(CarBuilder):
    def __init__(self):
        self.bmw = None
    def getCarModel(self):
        return self.bmw
    def setSequence(self, seq):
        self.bmw = BmwModel(seq)

class Director:
    def __init__(self):
        self.benz, self.bmw = BenzBuilder(), BmwBuilder()
    def getBenzModel(self):
        seq = ["start", "stop"]
        self.benz.setSequence(seq)
        return self.benz.getCarModel()
    def getBmwModel(self):
        seq = ["alarm", "start", "stop"]
        self.bmw.setSequence(seq)
        return self.bmw.getCarModel()

def main():
    director = Director()
    for i in range(10):
        director.getBenzModel().run()
    for i in range(2):
        director.getBmwModel().run()

if __name__ == "__main__":
    main()


