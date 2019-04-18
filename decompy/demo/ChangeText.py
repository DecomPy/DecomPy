from tkinter import tix as tkinter


class ChangeText(tkinter.Text):
    def __init__(self, *args, **kwargs):
        tkinter.Text.__init__(self, *args, **kwargs)

        self.unbind_class("Text", "<Control-d>")
        self.unbind_class("Text", "<Control-h>")
        self.unbind_class("Text", "<Control-i>")
        self.unbind_class("Text", "<Control-k>")
        self.unbind_class("Text", "<Control-o>")
        self.unbind_class("Text", "<Control-t>")
        self.unbind_class("Text", "<Control-/>")

        self.tk.eval('''
            proc widget_proxy {widget widget_command args} {
                # call the real tk widget command with the real args
                set result [uplevel [linsert $args 0 $widget_command]]
                # generate the event for certain types of commands
                if {([lindex $args 0] in {insert replace delete}) ||
                    ([lrange $args 0 2] == {mark set insert}) || 
                    ([lrange $args 0 1] == {xview moveto}) ||
                    ([lrange $args 0 1] == {xview scroll}) ||
                    ([lrange $args 0 1] == {yview moveto}) ||
                    ([lrange $args 0 1] == {yview scroll})} {
                    event generate  $widget <<Change>> -when tail
                }
                # return the result from the real widget command
                return $result
            }
            ''')
        self.tk.eval('''
            rename {widget} _{widget}
            interp alias {{}} ::{widget} {{}} widget_proxy {widget} _{widget}
        '''.format(widget=str(self)))


if __name__ == "__main__":
    root = tkinter.Tk()
    root.title("Text with Change Event Example")
    text = ChangeText(root)


    def _changed(event):
        print("You changed to text widget!")


    text.bind_all("<<Change>>", _changed)
    text.pack()
    root.mainloop()