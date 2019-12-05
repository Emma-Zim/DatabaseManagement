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
        retVal = self.connection.SelectConcert()
        for val in retVal:
            outputString = ""
            for v in val:
                if isinstance(v, datetime.date):
                    v = v.strftime('%y-%m-%d')
                outputString += v + " "
            mainFrame.getFrame(object).CreateLabel(outputString)
        # output the return on that query on a page
        mainFrame.showFrame(object)
