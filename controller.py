import tkinter as tk
import databaseConnection as dc
import datetime
import re

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
        for widget in mainFrame.getFrame(object).winfo_children():
            widget.destroy()
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
        mainFrame.getFrame(object).CreateEntry()
        vals = self.GetConcerts()
        for v in vals:
            mainFrame.getFrame(object).AddSelection(v)
        mainFrame.getFrame(object).ShowSelection(self)
        mainFrame.getFrame(object).GeneratePage(self)
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

    def RemoveConcert(self, obj):
        if obj.listBox.curselection():
            id = "C"
            for x in range(0, 4 - len(str(obj.listBox.curselection()[0] + 1))):
                id = id + "0"
            id = id + str(obj.listBox.curselection()[0] + 1)
            retVal = self.connection.RemoveFromConcert(id)
            if retVal:
                obj.ShowMessage("Delete Successful")
                for widget in obj.winfo_children():
                    widget.destroy()
                obj.CreateListbox()
                vals = self.GetConcerts()
                for v in vals:
                    obj.AddSelection(v)
                obj.ShowSelection(self)
            else:
                mainFrame.getFrame(object).ShowMessage("Delete Failed")

    def CreateConcert(self, obj):
        if obj.bands.curselection() and obj.songs.curselection():
            # Add the Concert to the database
            bandIds = []
            songIds = []
            locations = {1: "Seattle, WA", 2: "Portland, OR", 3: "Washington, DC", 4: "New York City, NY", 5: "San Francisco, CA"}

            # get the location
            loc = locations[obj.location.get()]

            # get the bandIds
            for b in obj.bands.curselection():
                bandId = "B"
                for x in range(0, 4 - len(str(b + 1))):
                    bandId = bandId + "0"
                bandId = bandId + str(b + 1)
                bandIds.append(bandId)

            # get the songIds
            for s in obj.songs.curselection():
                songId = "S"
                for x in range(0, 4 - len(str(s + 1))):
                    songId = songId + "0"
                songId = songId + str(s + 1)
                songIds.append(songId)

            year = obj.dateEntry.get()[0:4]
            month = obj.dateEntry.get()[5:7]
            day = obj.dateEntry.get()[8:]

            flag = True
            if len(obj.dateEntry.get()) == 0 or not re.match("[0-9]{4}-[0-9]{2}-[0-9]{2}", obj.dateEntry.get()):
                flag = False

            if flag:
                year = obj.dateEntry.get()[0:4]
                month = obj.dateEntry.get()[5:7]
                day = obj.dateEntry.get()[8:]

                if int(month) <= 0 or int(month) >= 13:
                    flag = False

                flag = True
                if int(year) < 1600 or int(year) > 2021:
                    flag = False

                if flag:
                    if int(month) == 1 or int(month) == 3 or int(month) == 5 or int(month) == 7 or int(month) == 8 or int(month) == 10 or int(month) == 12:
                        if int(day) <= 0 or int(day) > 31:
                            flag = False
                    if int(month) == 2:
                        if int(day) <= 0 or int(day) > 28:
                            flag = False

                    if int(month) == 4 or int(month) == 6 or int(month) == 9 or int(month) == 11:
                        if int(day) <= 0 or int(day) > 30:
                            flag = False

            if flag:
                retVal = self.connection.AddConcert(bandIds, songIds, loc, obj.dateEntry.get())
                if retVal:
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
                else:
                    obj.ShowMessage("Create Failed")

    def UpdateConcert(self, obj):
        if obj.listBox.curselection():
            locations = {1: "Seattle, WA", 2: "Portland, OR", 3: "Washington, DC", 4: "New York City, NY", 5: "San Francisco, CA"}
            loc = locations[obj.location.get()]

            id = "C"
            for x in range(0, 4 - len(str(obj.listBox.curselection()[0] + 1))):
                id = id + "0"
            id = id + str(obj.listBox.curselection()[0] + 1)

            flag = True
            if len(obj.dateEntry.get()) == 0 or not re.match("[0-9]{4}-[0-9]{2}-[0-9]{2}", obj.dateEntry.get()):
                flag = False

            if flag:
                year = obj.dateEntry.get()[0:4]
                month = obj.dateEntry.get()[5:7]
                day = obj.dateEntry.get()[8:]

                if int(month) <= 0 or int(month) >= 13:
                    flag = False

                if int(year) < 1600 or int(year) > 2021:
                    flag = False

                if flag:
                    if int(month) == 1 or int(month) == 3 or int(month) == 5 or int(month) == 7 or int(month) == 8 or int(month) == 10 or int(month) == 12:
                        if int(day) <= 0 or int(day) > 31:
                            flag = False
                    if int(month) == 2:
                        if int(day) <= 0 or int(day) > 28:
                            flag = False

                    if int(month) == 4 or int(month) == 6 or int(month) == 9 or int(month) == 11:
                        if int(day) <= 0 or int(day) > 30:
                            flag = False

            if flag:
                retVal = self.connection.UpdateConcert(id, loc, obj.dateEntry.get())
                if retVal:
                    obj.ShowMessage("Create Successful")
                    for widget in obj.winfo_children():
                        widget.destroy()
                    obj.CreateListbox()
                    obj.CreateEntry()
                    vals = self.GetConcerts()
                    for v in vals:
                        obj.AddSelection(v)
                    obj.ShowSelection(self)
                    obj.GeneratePage(self)
                else:
                    obj.ShowMessage("Update Failed")

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
