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

    def ViewConcertsButton(self, mainFrame, object):
        # execute an sql query
        retVal = self.connection.ExecuteQuery("""SELECT B.name, C.location, C.date FROM Concert C
                                                    JOIN BandConcert BC ON BC.concertId = C.concertId
                                                    JOIN Band B ON B.bandId = BC.bandId;""")
        #mainFrame.getFrame(object).CreateLabel("Band Location Date")
        for val in retVal:
            outputString = val[0] + "|" + val[1] + "|" + val[2].strftime('%y-%m-%d')
            mainFrame.getFrame(object).CreateLabel(outputString)
        # output the return on that query on a page
        mainFrame.showFrame(object)

    def UpdateConcertsPage(self, mainFrame, object):
        retVal = self.connection.ExecuteQuery("""SELECT B.name, C.location, C.date FROM Concert C
                                                    JOIN BandConcert BC ON BC.concertId = C.concertId
                                                    JOIN Band B ON B.bandId = BC.bandId;""")
        mainFrame.getFrame(object).ShowSelection(retVal)
        mainFrame.showFrame(object)

    def DeleteConcertsPage(self, mainFrame, object):
        retVal = self.connection.ExecuteQuery("""SELECT B.name, C.location, C.date FROM Concert C
                                                    JOIN BandConcert BC ON BC.concertId = C.concertId
                                                    JOIN Band B ON B.bandId = BC.bandId;""")
        mainFrame.getFrame(object).ShowSelection(self, retVal)
        mainFrame.showFrame(object)

    def Remove(self, item):
        vals = item.split("|")
        print(vals)
        retVal = self.connection.RemoveFromConcert(vals[0], vals[1], vals[2].strptime('%y-%m-%d'))
        print(retVal)
        #retVal = control.connection.ExecuteQuery()
