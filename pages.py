import tkinter as tk
import databaseConnection as dbc
import controller as control

class Container(tk.Tk):
    def __init__(self, *args, **kwargs):

        tk.Tk.__init__(self, *args, **kwargs)
        container = tk.Frame(self)

        container.pack(side="top", fill="both", expand = True)

        container.grid_rowconfigure(0, weight=1)
        container.grid_columnconfigure(0, weight=1)

        self.frames = {}

        for F in (StartPage, CreateConcertPage, SelectConcertPage, UpdateConcertPage, DelecteConcertPage):

            frame = F(container, self)
            self.frames[F] = frame

            frame.grid(row=0, column=0, sticky="nsew")

        self.showFrame(StartPage)

    def getFrame(self, obj):
        print(obj)
        return self.frames[obj]

    def showFrame(self, cont):
        frame = self.getFrame(cont)
        frame.tkraise()

class StartPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Start Page")
        label.pack(pady=10,padx=10)

class CreateConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Create Concert Page")
        label.pack(pady=10,padx=10)

class SelectConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Select Concert Page")
        label.pack(pady=10,padx=10)

    def CreateLabel(self, strVal):
        print(strVal)
        tk.Label(self, text = strVal).pack()

class UpdateConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Update Concert Page")
        label.pack(pady=10,padx=10)

class DelecteConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Delete Concert Page")
        label.pack(pady=10,padx=10)
