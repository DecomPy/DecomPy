import tkinter

from decompy.demo.highlightText import highlightDiffs, configureHighlightColors
from decompy.RL.Reward.RewardFunction import RewardFunction


class ActionList(tkinter.Frame):
    def __init__(self, parent, input_textbox, output_textbox, reward, goal_text, active_color="red"):
        tkinter.Frame.__init__(self, parent)
        self.actionList = []
        self.input_textbox = input_textbox
        self.output_textbox = output_textbox
        self.goal_textbox = goal_text
        self.reward_entry = reward
        configureHighlightColors(self.input_textbox, self.output_textbox)
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
        highlightDiffs(self.input_textbox, self.output_textbox)

        in_state = self.input_textbox.get("1.0", "end")
        out_state = self.output_textbox.get("1.0", "end")
        goal_state = self.goal_textbox.get("1.0", "end")

        if out_state.strip() != "":
            reward = RewardFunction().create_reward(in_state, out_state, goal_state)

            effect = "no"
            if reward > 0:
                effect = "a positive"
            elif reward < 0:
                effect = "a negative"

            self.reward_entry.delete(0, "end")
            self.reward_entry.insert(0, "The calculated reward was %d. "
                                        "This means that this action had %s effect on the llvm code" %
                                     (reward, effect))

