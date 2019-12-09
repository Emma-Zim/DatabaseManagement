import tkinter as tk
import tkinter.messagebox
import databaseConnection as dbc

class Container(tk.Tk):
    def __init__(self, *args, **kwargs):

        tk.Tk.__init__(self, *args, **kwargs)
        container = tk.Frame(self)

        container.pack(side="top", fill="both", expand = True)

        container.grid_rowconfigure(0, weight=1)
        container.grid_columnconfigure(0, weight=1)

        self.frames = {}

        for F in (StartPage, CreateConcertPage, SelectConcertPage, UpdateConcertPage, DeleteConcertPage):

            frame = F(container, self)
            self.frames[F] = frame

            frame.grid(row=0, column=0, sticky="nsew")

        self.showFrame(StartPage)

    def getFrame(self, obj):
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
        self.location = tk.IntVar(self)
        self.bands = self.CreateBands()
        self.songs = self.CreateSongs()
        self.dateEntry = self.CreateEntry()

    def CreateBands(self):
        self.bands = tk.Listbox(self, width = 50, selectmode=tk.MULTIPLE, exportselection = 0)

    def CreateSongs(self):
        self.songs = tk.Listbox(self, width = 50, selectmode=tk.MULTIPLE, exportselection = 0)

    def CreateEntry(self):
        self.dateEntry = tk.Entry(self)

    def AddBand(self, outputString):
        self.bands.insert("end", outputString)

    def AddSong(self, outputString):
        self.songs.insert("end", outputString)

    def ShowSelection(self):
        tk.Label(self, text = "Select the Band(s):").pack()
        self.bands.pack()
        tk.Label(self, text = "Select the Song(s):").pack()
        self.songs.pack()

    def GeneratePage(self, c):
        tk.Label(self, text = "Select a Location: ").pack()
        tk.Radiobutton(self, text = "Seattle, WA", variable = self.location, value = 1, indicatoron = 0).pack()
        tk.Radiobutton(self, text = "Portland, OR", variable = self.location, value = 2, indicatoron = 0).pack()
        tk.Radiobutton(self, text = "Washington, DC", variable = self.location, value = 3, indicatoron = 0).pack()
        tk.Radiobutton(self, text = "New York City, NY", variable = self.location, value = 4, indicatoron = 0).pack()
        tk.Radiobutton(self, text = "San Francisco, CA", variable = self.location, value = 5, indicatoron = 0).pack()
        self.location.set(1)

        tk.Label(self, text = "Enter the Date: ").pack()
        self.dateEntry.pack()
        self.dateEntry.insert(0, "2019-01-01")

        self.ShowSelection()

        tk.Button(self, text = "Create", command = lambda: c.CreateConcert(self)).pack()

    def ShowMessage(self, text):
        tk.messagebox.showinfo("Create Concert", text)

class SelectConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)

    def CreateLabel(self, strVal, r, col):
        l = tk.Label(self, text = strVal)
        l.grid(row = r, column = col, padx = 25)

class UpdateConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        label = tk.Label(self, text="Update Concert Page")
        label.pack(pady=10,padx=10)
        self.location = tk.IntVar(self)
        self.dateEntry = self.CreateEntry()
        self.listBox = self.CreateListbox()

    def CreateListbox(self):
        self.listBox = tk.Listbox(self, width = 50, selectmode='SINGLE')

    def CreateEntry(self):
        self.dateEntry = tk.Entry(self)

    def AddSelection(self, outputString):
        self.listBox.insert("end", outputString)

    def ShowSelection(self, c):
        tk.Label(self, text = "Select the Concert to change: ").pack()
        self.listBox.pack()

    def ShowMessage(self, text):
        tk.messagebox.showinfo("Update Query", text)

    def GeneratePage(self, c):
        tk.Label(self, text = "Select a Location: ").pack()
        tk.Radiobutton(self, text = "Seattle, WA", variable = self.location, value = 1, indicatoron=0).pack()
        tk.Radiobutton(self, text = "Portland, OR", variable = self.location, value = 2, indicatoron=0).pack()
        tk.Radiobutton(self, text = "Washington, DC", variable = self.location, value = 3, indicatoron=0).pack()
        tk.Radiobutton(self, text = "New York City, NY", variable = self.location, value = 4, indicatoron=0).pack()
        tk.Radiobutton(self, text = "San Francisco, CA", variable = self.location, value = 5, indicatoron=0).pack()
        self.location.set(1)

        tk.Label(self, text = "Enter the Date: ").pack()
        self.dateEntry.pack()
        self.dateEntry.insert(0, "2019-01-01")

        tk.Button(self, text = "Submit", command = lambda: c.UpdateConcert(self)).pack()

class DeleteConcertPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self, parent)
        self.listBox = self.CreateListbox()

    def CreateListbox(self):
        self.listBox = tk.Listbox(self, width = 50, selectmode='SINGLE')

    def AddSelection(self, outputString):
        self.listBox.insert("end", outputString)

    def ShowSelection(self, c):
        self.listBox.pack()
        tk.Button(self, text = "Delete", command = lambda: c.RemoveConcert(self)).pack()

    def ShowMessage(self, text):
        tk.messagebox.showinfo("Delete Query", text)
