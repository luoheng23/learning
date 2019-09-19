# command pattern is to simplify user's work.
# basically call execute install of calling a set of find,add,delete 

class Group:
    def find(self):
        pass
    def add(self):
        pass
    def delete(self):
        pass
    def change(self):
        pass
    def plan(self):
        pass

class RequirementGroup(Group):
    def find(self):
        print("RequirementGroup find...")
    def add(self):
        print("RequirementGroup add...")
    def delete(self):
        print("RequirementGroup delete...")
    def change(self):
        print("RequirementGroup change...")
    def plan(self):
        print("RequirementGroup plan...")

class PageGroup(Group):
    def find(self):
        print("PageGroup find...")
    def add(self):
        print("PageGroup add...")
    def delete(self):
        print("PageGroup delete...")
    def change(self):
        print("PageGroup change...")
    def plan(self):
        print("PageGroup plan...")

class CodeGroup(Group):
    def find(self):
        print("CodeGroup find...")
    def add(self):
        print("CodeGroup add...")
    def delete(self):
        print("CodeGroup delete...")
    def change(self):
        print("CodeGroup change...")
    def plan(self):
        print("CodeGroup plan...")

class Command:
    def __init__(self):
        self.req, self.pag, self.cod = RequirementGroup(), PageGroup(), CodeGroup()
    def execute(self):
        pass

class AddRequirementCommand(Command):
    def execute(self):
        self.req.find()
        self.req.add()
        self.req.plan()

class DeleteCommand(Command):
    def execute(self):
        self.pag.find()
        self.req.delete()
        self.req.plan()

class Invoker:
    def __init__(self):
        self.cmd = None
    def setCommand(self, command):
        self.cmd = command
    def action(self):
        self.cmd.execute()

def client():
    luoheng = Invoker()

    cmd = AddRequirementCommand()
    luoheng.setCommand(cmd)
    luoheng.action()

    cmd = DeleteCommand()
    luoheng.setCommand(cmd)
    luoheng.action()

if __name__ == "__main__":
    client()