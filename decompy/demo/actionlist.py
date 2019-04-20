import tkinter


class ActionList(tkinter.Frame):
    def __init__(self, parent, output_textbox, active_color="red"):
        tkinter.Frame.__init__(self, parent)
        self.actionList = []
        self.output_textbox = output_textbox
        self.active_color = active_color

    def addAction(self, action, llvm_state):
        frame = tkinter.Frame(self)
        label = tkinter.Label(frame, text=str(action))
        label.pack()
        frame.pack(side=tkinter.TOP, fill="x")
        self.actionList.append(frame)

        def propagateColorChange(widget, color):
            widget.config(bg=color)
            for elem in widget.winfo_children():
                propagateColorChange(elem, color)

        frame.bind("<Enter>", lambda e: propagateColorChange(e.widget, self.active_color))
        frame.bind("<Leave>", lambda e: propagateColorChange(e.widget, e.widget.master.cget("background")))
        label.bind("<Button-1>", lambda e: self.executeAction(action, llvm_state))

    def clearActions(self):
        for actionWidget in self.actionList:
            actionWidget.pack_forget()
        self.actionList = []

    def updateActions(self, actions, llvm_state):
        self.clearActions()
        for action in actions:
            self.addAction(action, llvm_state)

    def executeAction(self, action, llvm_state):
        self.output_textbox.delete("1.0", tkinter.END)
        self.output_textbox.insert("1.0", action.do_action(llvm_state))
