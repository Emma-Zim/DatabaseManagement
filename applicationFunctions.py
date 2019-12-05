import tkinter as tk
import databaseConnection as dc

def OutputFields(val):
    for item in val:
        l = tk.Label(mainWindowObject, text = item)
        l.pack()

def SelectandShowConcerts(cursor, pageObject, mainObject):
    retVal = dc.SelectConcert(cursor)
    for val in retVal:
        val = val.toString()
        pageObject.CreateLabel(val)
    mainObject.show_frame(pageObject)
