import tkinter as tk
import controller as control
import pages

mainWindowObject = pages.Container()

controller = control.Controller()

mainWindowObject.geometry("800x600")
mainWindowObject.title("Database Music Library Project")

# Menu for Creating a new data object
newMenu = tk.Menu(mainWindowObject)
newMenu.add_command(label = 'New Concert', command = lambda: controller.CreateConcertButton(mainWindowObject, pages.CreateConcertPage))

# menu for viewing data
viewMenu = tk.Menu(mainWindowObject)
viewMenu.add_command(label = 'View Concerts', command = lambda: controller.ViewConcertsButton(mainWindowObject, pages.SelectConcertPage))
viewMenu.add_command(label = 'View Bands', command = lambda: controller.ViewBand(mainWindowObject, pages.ShowBands))
viewMenu.add_command(label = 'View Members Of Band', command = lambda: controller.ViewBand(mainWindowObject, pages.ShowBandArtists))
viewMenu.add_command(label = 'View Albums From Band', command = lambda: controller.ViewBand(mainWindowObject, pages.ShowAlbumsFromBand))
viewMenu.add_command(label = 'View Songs From Album', command = lambda: controller.ViewAlbum(mainWindowObject, pages.ShowSongsFromAlbum))
viewMenu.add_command(label = "View Playlist Duration", command = lambda: controller.ViewPlaylistsButton(mainWindowObject, pages.SelectPlaylistsPage))

# menu for searching
searchMenu = tk.Menu(mainWindowObject)
searchMenu.add_command(label = 'Search Songs', command = lambda: controller.SearchforSongsButton(mainWindowObject, pages.SearchSongsPage))
searchMenu.add_command(label = 'Search Bands', command = lambda: controller.SearchforAlbumsButton(mainWindowObject, pages.SearchAlbumsPage))
searchMenu.add_command(label = "Search Playlists", command = lambda: controller.SearchforPlaylistsButton(mainWindowObject, pages.SearchPlaylistsPage))

# Menu for updating data
updateMenu = tk.Menu(mainWindowObject)
updateMenu.add_command(label = 'Update Concerts', command = lambda: controller.UpdateConcertsPage(mainWindowObject, pages.UpdateConcertPage))

# menu for deleteing data
deleteMenu = tk.Menu(mainWindowObject)
deleteMenu.add_command(label = 'Delete Concert', command = lambda: controller.DeleteConcertsPage(mainWindowObject, pages.DeleteConcertPage)) #, command = lambda: mainWindowObject.show_frame(pages.DelecteConcertPage))

# overall menu for the menus
menu = tk.Menu(mainWindowObject)
menu.add_cascade(label = "New", menu = newMenu)
menu.add_cascade(label = "View", menu = viewMenu)
menu.add_cascade(label = "Search", menu = searchMenu)
menu.add_cascade(label = "Update", menu = updateMenu)
menu.add_cascade(label = "Delete", menu = deleteMenu)
menu.add_command(label = 'Exit', command = mainWindowObject.quit)

mainWindowObject.config(menu = menu)
