import tkinter

from decompy.RL.ActionGenerator.ActionGenerator import ActionGenerator
from decompy.demo.actionlist import ActionList
from decompy.demo.ChangeText import ChangeText


class ActionDemo(tkinter.Frame):
    def __init__(self, parent):
        tkinter.Frame.__init__(self, parent)

        self.actionGen = ActionGenerator()

        self.text1 = ChangeText(self)
        self.text1.pack(side=tkinter.LEFT, expand=True, fill="both")
        self.text1.bind_all("<<Change>>", lambda e: self.actionList.updateActions(
            self.actionGen.list_actions(self.text1.get("0.0", tkinter.END))))

        self.actionList = ActionList(self)
        self.actionList.pack(side=tkinter.LEFT, fill="both", expand=True)

        self.text2 = tkinter.Text(self)
        self.text2.pack(side=tkinter.RIGHT, expand=True, fill="both")


if __name__ == "__main__":
    root = tkinter.Tk()
    actionDemo = ActionDemo(root, )
    actionDemo.pack(expand=True, fill="both")
    root.mainloop()
