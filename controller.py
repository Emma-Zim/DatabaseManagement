import tkinter as tk
import databaseConnection as dc
import datetime

class Controller():
    def __init__(self):
        self.connection = dc.DatabaseConnection()

    def QuitApplication(self, object):
        self.connection.CloseCursor()
        self.connection.CloseConnection()
        object.quit()

    def CreateConcertButton(self, mainFrame, object):
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
        mainFrame.getFrame(object).CreateBands()
        mainFrame.getFrame(object).CreateSongs()
        mainFrame.getFrame(object).CreateEntry()

        b = self.GetBands()
        for band in b:
            mainFrame.getFrame(object).AddBand(band)

        s = self.GetSongs()
        for song in s:
            mainFrame.getFrame(object).AddSong(song)

        mainFrame.getFrame(object).GeneratePage(self)
        mainFrame.showFrame(object)

    def ViewConcertsButton(self, mainFrame, object):
        # execute an sql query
        retVal = self.connection.SelectConcert()
        colCount = 0
        for val in retVal:
            rowCount = 0
            r = self.connection.SelectConcertArtist(val[0])
            outputString = ""
            for artist in r:
                outputString += artist[0] + " & "
            mainFrame.getFrame(object).CreateLabel(outputString[:-3], rowCount, colCount)
            rowCount += 1
            r = self.connection.SelectConcertValues(val[0])
            for v in r:
                for i in v:
                    mainFrame.getFrame(object).CreateLabel(i, rowCount, colCount)
                    rowCount += 1
            r = self.connection.SelectConcertSongs(val[0])
            for data in r:
                mainFrame.getFrame(object).CreateLabel(data[0], rowCount, colCount)
                rowCount += 1
            colCount += 1
        mainFrame.showFrame(object)

    def UpdateConcertsPage(self, mainFrame, object):
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
        mainFrame.getFrame(object).CreateListbox()
        vals = self.GetConcerts()
        for v in vals:
            mainFrame.getFrame(object).AddSelection(v)
        mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)

    def DeleteConcertsPage(self, mainFrame, object):
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
        mainFrame.getFrame(object).CreateListbox()
        vals = self.GetConcerts()
        for v in vals:
            mainFrame.getFrame(object).AddSelection(v)
        mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)

    def GetBands(self):
        items = []
        retVal = self.connection.SelectBands()
        for val in retVal:
            items.append(val[1])

        return items

    def GetSongs(self):
        items = []
        retVal = self.connection.SelectSongs()
        for val in retVal:
            items.append(val[2])

        return items

    def GetArtists(self):
        items = []
        retVal = self.connection.SelectArtists()
        for val in retVal:
            items.append(val[1])

        return items

    def GetConcerts(self):
        items = []
        retVal = self.connection.SelectConcert()
        for val in retVal:
            outputString = ""
            v = self.connection.SelectConcertArtist(val[0])
            for artist in v:
                outputString += artist[0] + " & "
            outputString = outputString[:-2]
            v = self.connection.SelectConcertValues(val[0])
            for item in v:
                for i in item:
                    if isinstance(i, datetime.date):
                        i = i.strftime('%y-%m-%d')
                    outputString += i + " "
            items.append(outputString)
        return items

    def RemoveConcert(self, obj, item):
        if item:
            id = "C"
            for x in range(0, 4 - len(str(item[0]))):
                id = id + "0"
            id = id + str(item[0] + 1)
            print(id)
            #retVal = self.connection.RemoveFromConcert(id)
            #if retVal:
            obj.ShowMessage("Delete Successful")
            for widget in obj.winfo_children():
                widget.destroy()
            obj.CreateListbox()
            vals = self.GetConcerts()
            for v in vals:
                obj.AddSelection(v)
            obj.ShowSelection(self)
            #else:
                #mainFrame.getFrame(object).ShowMessage("Delete Failed")
            #print(retVal)

    def CreateConcert(self, obj):
        print(obj.location.get())
        print(obj.bands.curselection())
        print(obj.songs.curselection())
        print(obj.dateEntry.get())

        if obj.bands.curselection() and obj.songs.curselection():
            # Add the Concert to the database
            retVal = self.connection.AddConcert(obj.bands.curselection(), obj.songs.curselection(), obj.location.get(), obj.dateEntry.get())

            obj.ShowMessage("Create Successful")
            for widget in obj.winfo_children():
                widget.destroy()
            obj.CreateBands()
            obj.CreateSongs()
            obj.CreateEntry()

            b = self.GetBands()
            for band in b:
                obj.AddBand(band)

            s = self.GetSongs()
            for song in s:
                obj.AddSong(song)

            obj.GeneratePage(self)

    def ViewBand(self, mainFrame, object):
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
        mainFrame.getFrame(object).CreateListbox()
        vals = self.connection.SelectBands()
        for v in vals:
            mainFrame.getFrame(object).AddSelection(v[1])
        mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)
        #for v in vals:
        #    mainFrame.getFrame(object).AddSelection(v)
        #mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)

    def ViewAlbum(self, mainFrame, object):
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
        mainFrame.getFrame(object).CreateListbox()
        vals = self.connection.SelectAlbum()
        for v in vals:
            mainFrame.getFrame(object).AddSelection(v[1])
        mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)
        #for v in vals:
        #    mainFrame.getFrame(object).AddSelection(v)
        #mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.showFrame(object)

    def showAlbumsBand(self, obj, item):
        if item:
            id = "B"
            for x in range(0, 4 - len(str(item[0]+1))):
                id = id + "0"
            id = id + str(item[0] + 1)
            print(id)

        retVal=self.connection.SelectAlbumsFromBand(id)
        print retVal

        albums = ""

        for y in retVal:
            albums +=  y[0] + ", " + y[1] +" recording" + "\n"

        obj.ShowMessage(albums)


    def showSongsAlbum(self, obj, item):
        if item:
            id = "A"
            for x in range(0, 4 - len(str(item[0]+1))):
                id = id + "0"
            id = id + str(item[0] + 1)
            print(id)

        retVal=self.connection.SelectSongsFromAlbum(id)
        print retVal

        songs = ""

        for y in retVal:
            songs +=  y[0] + "\n"

        obj.ShowMessage(songs)

    def showSongsAlbum(self, obj, item):
        if item:
            id = "A"
            for x in range(0, 4 - len(str(item[0]+1))):
                id = id + "0"
            id = id + str(item[0] + 1)
            print(id)

        retVal=self.connection.SelectSongsFromAlbum(id)
        print retVal

        songs = ""

        for y in retVal:
            songs +=  y[0] + "\n"

        obj.ShowMessage(songs)

    def SelectMembersFromBand(self, obj, item):
        if item:
            id = "B"
            for x in range(0, 4 - len(str(item[0]+1))):
                id = id + "0"
            id = id + str(item[0] + 1)
            print(id)

        retVal=self.connection.SelectMembersFromBand(id)
        print retVal

        songs = ""

        for y in retVal:
            songs +=  y[0] + "\n"

        obj.ShowMessage(songs)
