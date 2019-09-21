
class LifeState:
    context = None

    def __init__(self):
        pass

    @classmethod
    def setContext(cls, context):
        LifeState.context = context

    def open(self):
        pass

    def close(self):
        pass

    def run(self):
        pass

    def stop(self):
        pass


class OpeningState(LifeState):
    def close(self):
        LifeState.context.setLifeState(Context.closingState)
        LifeState.context.getLifeState().close()

    def open(self):
        print("opening...")


class ClosingState(LifeState):
    def close(self):
        print("closing...")

    def open(self):
        LifeState.context.setLifeState(Context.openingState)
        LifeState.context.getLifeState().open()

    def run(self):
        LifeState.context.setLifeState(Context.runningState)
        LifeState.context.getLifeState().run()

    def stop(self):
        LifeState.context.setLifeState(Context.stoppingState)
        LifeState.context.getLifeState().run()


class RunningState(LifeState):
    def run(self):
        print("running")

    def stop(self):
        LifeState.context.setLifeState(Context.stoppingState)
        LifeState.context.getLifeState().stop()


class StoppingState(LifeState):
    def open(self):
        LifeState.context.setLifeState(Context.openingState)
        LifeState.context.getLifeState().open()

    def run(self):
        LifeState.context.setLifeState(Context.runningState)
        LifeState.context.getLifeState().run()

    def stop(self):
        print("stopping...")


class Context:
    openingState = OpeningState()
    closingState = ClosingState()
    runningState = RunningState()
    stoppingState = StoppingState()

    def __init__(self):
        self.lifeState = None

    def getLifeState(self):
        return self.lifeState

    def setLifeState(self, state):
        self.lifeState = state
        self.lifeState.setContext(self)

    def open(self):
        self.lifeState.open()

    def close(self):
        self.lifeState.close()

    def run(self):
        self.lifeState.run()

    def stop(self):
        self.lifeState.stop()


def main():
    context = Context()
    context.setLifeState(ClosingState())
    context.open()
    context.close()
    context.run()
    context.open()
    context.stop()


if __name__ == "__main__":
    main()
