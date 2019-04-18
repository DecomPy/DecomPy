import tkinter


class ActionList(tkinter.Frame):
    def __init__(self, parent, active_color="red"):
        tkinter.Frame.__init__(self, parent)
        self.actionList = []
        self.active_color = active_color

    def addAction(self, action):
        frame = tkinter.Frame(self)
        label = tkinter.Label(frame, text=str(action.starting_token) + ":" + str(action.ending_token))
        label.pack()
        frame.pack(side=tkinter.TOP, fill="x")
        self.actionList.append(frame)

        def propagateColorChange(widget, color):
            widget.config(bg=color)
            for elem in widget.winfo_children():
                propagateColorChange(elem, color)

        frame.bind("<Enter>", lambda e: propagateColorChange(e.widget, self.active_color))
        frame.bind("<Leave>", lambda e: propagateColorChange(e.widget, e.widget.master.cget("background")))

    def clearActions(self):
        for actionWidget in self.actionList:
            actionWidget.pack_forget()
        self.actionList = []

    def updateActions(self, actions):
        self.clearActions()
        for action in actions:
            print(action)
            self.addAction(action)