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

    def ViewAlbumsButton(self, mainFrame, object):
    # View album queries
        retVal = self.connection.SelectAlbums()
        albumNamedict = {}
        albumNametoGenre = {}
        albumNametoLabel = {}

        for albumID in retVal:
            albumNamedict[albumID[0]] = []
            albumNametoGenre[albumID[0]] = None
            albumNametoLabel[albumID[0]] = None

        for val in retVal:
            songs = self.connection.SelectAlbumsSong(val[0])
            genre = self.connection.SelectAlbumsGenre(val[0])
            label = self. connection.SelectAlbumsLabel(val[0])
            outputList = []
            for song in songs:
                outputList.append(str(song[0]))
            albumNamedict[val[0]] = outputList
            albumNametoGenre[val[0]] = str(genre[0][0])
            albumNametoLabel[val[0]] = str(label[0][0])


        albumNamelist = albumNamedict.keys()
        mainFrame.getFrame(object).CreateListBox(albumNamelist, albumNamedict, albumNametoGenre, albumNametoLabel)
        mainFrame.showFrame(object)

    def ViewBandsButton(self, mainFrame, object):
        # View artist queries
        retVal = self.connection.SelectBands()
        bandNamedict = {}

        for bandName in retVal:
            bandNamedict[bandName[0]] = []
        for val in retVal:
            artists = self.connection.SelectBandsArtist(val[0])
            outputList = []
            for artist in artists:
                outputList.append(str(artist[0]))
            bandNamedict[val[0]] = outputList
        bandNamelist = bandNamedict.keys()
        mainFrame.getFrame(object).CreateListBox(bandNamelist, bandNamedict)
        mainFrame.showFrame(object)
    
    def ViewPlaylistsButton(self, mainFrame, object):
        #View total duration of playlist queries
        retVal = self.connection.SelectPlaylist()
        playlistIdDict = {}

        for playlist in retVal:
            durations = self.connection.ViewPlaylistDuration(playlist[0])
            outputList = []
            for duration in durations:
                outputList.append(int(duration[0]))
            playlistIdDict[playlist[0]] = outputList

        playlistIdList = playlistIdDict.keys()
        #print(playlistIdDict)
        playlistNameDict = {}
        for id in playlistIdDict:
            playlistNames = self.connection.SelectPlaylistName(id)
            for name in playlistNames:
                playlistNameDict[name[0]]=playlistIdDict[id]

        for name in playlistNameDict:
            total = sum(playlistNameDict[name])
            playlistNameDict[name]=total
        
        mainFrame.getFrame(object).CreateListBox(playlistNameDict)
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
    
    def SearchforSongsButton(self, mainFrame, object):
        retVal =self.connection.SelectBands()
        songToBandDict = {}

        for bandName in retVal:
            songs = self.connection.SearchforSongs(bandName[0])
            for song in songs:
                songToBandDict[song[0]] = bandName[0]

        mainFrame.getFrame(object).CreateSearchBox(songToBandDict)
        mainFrame.showFrame(object)
    
    def SearchforAlbumsButton (self, mainFrame, object):
        retVal = self.connection.SelectBands()
        albumToBandDict = {}
        for bandName in retVal:
            albums = self.connection.SearchforAlbums(bandName[0])
            for album in albums:
                albumToBandDict[album[0]] = bandName[0]

        mainFrame.getFrame(object).CreateSearchBox(albumToBandDict)
        mainFrame.showFrame(object)


            


