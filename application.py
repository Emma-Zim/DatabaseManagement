import tkinter as tk
import databaseConnection as dc
import applicationFunctions as af


mainWindowObject = tk.Tk()

mainWindowObject.geometry("800x600")
mainWindowObject.title("Database Music Library Project")

connection = dc.CreateConnection()
cursor = connection.cursor()

# Build the Application

# Menu for Creating a new data object
newMenu = tk.Menu(mainWindowObject)
newMenu.add_command(label='New Concert')

# menu for viewing data
viewMenu = tk.Menu(mainWindowObject)
viewMenu.add_command(label='View Concerts')

# Menu for updating data
updateMenu = tk.Menu(mainWindowObject)
updateMenu.add_command(label = 'Update Concerts')

# menu for deleteing data
deleteMenu = tk.Menu(mainWindowObject)
deleteMenu.add_command(label = 'Delete Concert')

# overall menu for the menus
menu = tk.Menu(mainWindowObject)
menu.add_cascade(label = "New", menu = newMenu)
menu.add_cascade(label = "View", menu = viewMenu)
menu.add_cascade(label = "Update", menu = updateMenu)
menu.add_cascade(label = "Delete", menu = deleteMenu)
menu.add_command(label = 'Exit', command = mainWindowObject.quit)

mainWindowObject.config(menu = menu)

# createConcert = tk.Button(mainWindowObject, text = "Create Concert", state = 'disable')
# updateConcert = tk.Button(mainWindowObject, text = "Update Concert", state = 'disable')
# selectConcert = tk.Button(mainWindowObject, text = "Select Concert", command = OutputFields(dc.SelectConcert(cursor)))
# deleteConcert = tk.Button(mainWindowObject, text = "Delect Concert", state = 'disable')
# createConcert.pack()
# updateConcert.pack()
# selectConcert.pack()
# deleteConcert.pack()

mainWindowObject.mainloop()

cursor.close()
dc.CloseConnection(connection)
