import tkinter
from tkinter import ttk

from decompy.RL.ActionGenerator.ActionGenerator import ActionGenerator
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer

from decompy.demo.actionlist import ActionList
from decompy.demo.ChangeText import ChangeText


class ActionDemo(tkinter.Frame):
    def __init__(self, parent):
        tkinter.Frame.__init__(self, parent)

        self.update_job = None

        self.actionGen = ActionGenerator()

        # Input Notebook with plain text module input and goal input
        input_notebook = ttk.Notebook(self)

        input_page = tkinter.Frame(input_notebook)
        goal_page = tkinter.Frame(input_notebook)

        self.input = ChangeText(input_page)
        self.input.pack(expand=True, fill="both")
        self.input.bind_all("<<Change>>", self.should_update)

        self.goal_state = tkinter.Text(goal_page)
        self.goal_state.pack(expand=True, fill="both")

        input_notebook.add(input_page, text="LLVM Module")
        input_notebook.add(goal_page, text="Goal State")

        input_notebook.pack(side=tkinter.LEFT, expand=1, fill="both")

        # Output Notebook with tokenizer, action execution, reward calculation
        output_notebook = ttk.Notebook(self)

        token_page = tkinter.Frame(output_notebook)
        action_page = tkinter.Frame(output_notebook)
        reward_page = tkinter.Frame(output_notebook)

        self.tokenizer_text = tkinter.Text(token_page)
        self.action_text = tkinter.Text(action_page)
        self.reward_entry = tkinter.Entry(reward_page)

        self.action_text.pack(expand=True, fill="both")
        self.tokenizer_text.pack(expand=True, fill="both")
        self.reward_entry.pack(side=tkinter.TOP, fill="x")

        output_notebook.add(token_page, text='Tokenizer')
        output_notebook.add(action_page, text='Action Execution')
        output_notebook.add(reward_page, text="Reward")

        output_notebook.pack(side=tkinter.RIGHT, expand=1, fill="both")

        self.actionList = ActionList(self, self.input, self.action_text, self.reward_entry, self.goal_state)
        self.actionList.pack(side=tkinter.LEFT, fill="both", expand=True)

    def should_update(self, e):
        """
        Runs the update 3 seconds after the user has last typed
        :param e: Event
        """
        def update():
            llvm_state = self.input.get("0.0", tkinter.END)

            result = Tokenizer.tokenize(llvm_state, False)
            meta, _, _, _, _ = Tokenizer.extract_meta_tokens(result)
            self.tokenizer_text.delete("1.0", tkinter.END)
            self.tokenizer_text.insert("1.0", " ".join(["(%s)" % str(t) for t in meta]))

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
