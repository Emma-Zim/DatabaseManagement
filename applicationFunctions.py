import tkinter as tk

def OutputFields(val):
    for item in val:
        l = tk.Label(mainWindowObject, text = item)
        l.pack()

def CreateConcertForm():
    location = tk.Entry()
    date = tk.Entry()
