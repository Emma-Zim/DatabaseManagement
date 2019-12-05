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

    def ViewConcertsButton(self):
        # execute an sql query
        retVal = self.connection.SelectConcert()
        print(retVal)
        for val in retVal:
            for v in val:
                print(v)
                if isinstance(v, datetime.date):
                    v = v.strftime('%y-%m-%d')
                print(type(v))
        # output the return on that query on a page
 
