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

        for F in (StartPage, CreateConcertPage, 
                SelectConcertPage, 
                UpdateConcertPage, DeleteConcertPage, 
                SelectAlbumsPage, SelectBandsPage, SearchSongsPage):

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
        self.selectedConcert = None
        self.location = 1
        self.date = "2019-01-01"
        self.band = 1
        self.listBox = self.CreateListbox()

    def CreateListbox(self):
        self.listBox = tk.Listbox(self, width = 50, selectmode='SINGLE')

    def AddSelection(self, outputString):
        self.listBox.insert("end", outputString)

    def ShowSelection(self, c):
        tk.Label(self, text = "Select the Concert to change: ").pack()
        self.listBox.pack()
        self.GeneratePage()
        #tk.Button(self, text = "Delete", command = lambda: c.RemoveConcert(self, self.listBox.curselection())).pack()

    def ShowMessage(self, text):
        tk.messagebox.showinfo("Update Query", text)

    def GeneratePage(self):
        tk.Label(self, text = "Select a Location: ").pack()
        tk.Radiobutton(self, text = "Seattle, WA", variable = self.location, value = 1, indicatoron=0).pack()
        tk.Radiobutton(self, text = "Portland, OR", variable = self.location, value = 2, indicatoron=0).pack()
        tk.Radiobutton(self, text = "Washington, DC", variable = self.location, value = 3, indicatoron=0).pack()
        tk.Radiobutton(self, text = "New York City, NY", variable = self.location, value = 4, indicatoron=0).pack()
        tk.Radiobutton(self, text = "San Francisco, CA", variable = self.location, value = 5, indicatoron=0).pack()

        tk.Label(self, text = "Enter the Date: ").pack()
        e = tk.Entry(self)
        e.pack()
        e.insert(0, self.date)

        tk.Button(self, text = "Submit").pack()

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
        tk.Button(self, text = "Delete", command = lambda: c.RemoveConcert(self, self.listBox.curselection())).pack()

    def ShowMessage(self, text):
        tk.messagebox.showinfo("Delete Query", text)

class SelectAlbumsPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        self.list = tk.Listbox(self)
        self.list_songs = tk.Listbox(self)
        self.dict = {}
        self.dictAlbumToGenre = {}
        self.dictAlbumToLabel = {}
        self.list_song_btn = None

        self.genre_str = tk.StringVar()
        self.label_str = tk.StringVar()
        self.label = tk.Label(self, textvariable=self.genre_str).pack(padx=5, pady=10, side=tk.BOTTOM)
        self.label = tk.Label(self, textvariable = self.label_str).pack(padx=5, pady=5, side=tk.BOTTOM)


    def CreateListBox(self, albumsID, albumNamedict, albumToGenre, albumToLabel):
        self.dict = albumNamedict
        self.dictAlbumToGenre = albumToGenre
        self.dictAlbumToLabel = albumToLabel
        self.list.insert(0, *albumsID)
        self.list.pack() 

        self.list_song_btn = tk.Button(self, text="List song(s), genre and label of album:", 
                                   command=self.print_selection)
        self.list_song_btn.pack(fill = tk.BOTH) 

        
    def print_selection(self): 
        self.list_songs.delete(0,tk.END)
        selection = self.list.curselection()
        targeted = None
        for i in selection:
            targeted = self.list.get(i)
        
        list_songs_from_dict = self.dict[targeted]
        self.list_songs.insert(0, *list_songs_from_dict)
        self.list_songs.pack()

        self.genre_str.set("Genre: " + self.dictAlbumToGenre[targeted])
        self.label_str.set("Label: " + self.dictAlbumToLabel[targeted])

class SelectBandsPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        self.list = tk.Listbox(self)
        self.list_artist = tk.Listbox(self)
        self.dict = {}
        self.list_artist_btn = None
    
    def CreateListBox(self, bandName, artistNamedict):
        self.dict = artistNamedict
        self.list.insert(0, *bandName)
        self.list.pack()
        self.list_artist_btn = tk.Button(self, text="List artists in the band:", 
                                   command=self.print_selection)
        self.list_artist_btn.pack(fill = tk.BOTH)

    def print_selection(self): 
        self.list_artist.delete(0,tk.END)
        selection = self.list.curselection()
        targeted = None
        for i in selection:
            targeted = self.list.get(i)
        
        list_artists_from_dict = self.dict[targeted]
        self.list_artist.insert(0, *list_artists_from_dict)
        self.list_artist.pack()

class SearchSongsPage(tk.Frame):
    def __init__(self, parent, controller):
        tk.Frame.__init__(self,parent)
        self.song_search_box = tk.Entry(self)
        self.search_song_btn = tk.Button(self, text = "SEARCH", command = self.print_selection).pack()
        self.song_name_search = None
        self.songToBandDict = {}
        self.result_list_box = tk.Listbox(self)

        self.string = tk.StringVar()
        self.label = tk.Label(textvariable = self.string).pack(padx=5, pady=5, side=tk.BOTTOM)
    
    def CreateSearchBox(self, songToBandDict):
        #song_search_box = songName.get()
        self.song_search_box.pack(expand=True)
        self.songToBandDict = songToBandDict
        
    def print_selection(self):
        self.result_list_box.delete(0,tk.END)
        song_name = self.song_search_box.get()
        #self.label = tk.Label(text = song_name).pack()
        self.song_name_search = song_name

        search_res = []
        for song in self.songToBandDict:
            if self.song_name_search.lower() in song.lower():
                search_res.append(self.songToBandDict[song])
        
        if len(search_res)==0:
            self.string.set("There is no bands result from this song!")

        self.result_list_box.insert(0, *search_res)
        self.result_list_box.pack()

        

        