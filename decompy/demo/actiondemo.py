import tkinter

from decompy.RL.ActionGenerator.ActionGenerator import ActionGenerator
from decompy.demo.actionlist import ActionList
from decompy.demo.ChangeText import ChangeText


class ActionDemo(tkinter.Frame):
    def __init__(self, parent):
        tkinter.Frame.__init__(self, parent)

        self.update_job = None

        self.actionGen = ActionGenerator()

        self.text1 = ChangeText(self)
        self.text1.pack(side=tkinter.LEFT, expand=True, fill="both")
        self.text1.bind_all("<<Change>>", self.should_update)

        self.text2 = tkinter.Text(self)
        self.text2.pack(side=tkinter.RIGHT, expand=True, fill="both")

        self.actionList = ActionList(self, self.text1, self.text2)
        self.actionList.pack(side=tkinter.LEFT, fill="both", expand=True)

    def should_update(self, e):
        """
        Runs the update 3 seconds after the user has last typed
        :param e: Event
        """
        def update():
            llvm_state = self.text1.get("0.0", tkinter.END)
            self.actionList.updateActions(
                self.actionGen.list_actions(llvm_state),
                llvm_state
            )

        if self.update_job is not None:
            self.after_cancel(self.update_job)
            self.update_job = None

        self.update_job = self.after(3000, update)


if __name__ == "__main__":
    root = tkinter.Tk()
    actionDemo = ActionDemo(root, )
    actionDemo.pack(expand=True, fill="both")
    root.mainloop()
