import tkinter as tk
import controller as control
import pages

mainWindowObject = pages.Container()

controller = control.Controller()

mainWindowObject.geometry("800x600")
mainWindowObject.title("Database Music Library Project")

# Menu for Creating a new data object
newMenu = tk.Menu(mainWindowObject)
newMenu.add_command(label = 'New Concert')

# menu for viewing data
viewMenu = tk.Menu(mainWindowObject)
viewMenu.add_command(label = 'View Concerts', command = lambda: controller.ViewConcertsButton(mainWindowObject, pages.SelectConcertPage)) 
viewMenu.add_command(label = 'View Artists')
viewMenu.add_command(label = 'View Albums')

# menu for searching
searchMenu = tk.Menu(mainWindowObject)
searchMenu.add_command(label = 'Search Songs')
searchMenu.add_command(label = 'Search Artists')

# Menu for updating data
updateMenu = tk.Menu(mainWindowObject)
updateMenu.add_command(label = 'Update Concerts') #, command = lambda: mainWindowObject.show_frame(pages.UpdateConcertPage))

# menu for deleteing data
deleteMenu = tk.Menu(mainWindowObject)
deleteMenu.add_command(label = 'Delete Concert') #, command = lambda: mainWindowObject.show_frame(pages.DelecteConcertPage))

# overall menu for the menus
menu = tk.Menu(mainWindowObject)
menu.add_cascade(label = "New", menu = newMenu)
menu.add_cascade(label = "View", menu = viewMenu)
menu.add_cascade(label = "Update", menu = updateMenu)
menu.add_cascade(label = "Delete", menu = deleteMenu)
menu.add_command(label = 'Exit', command = lambda: controller.QuitApplication(mainWindowObject))

mainWindowObject.config(menu = menu)
