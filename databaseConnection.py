import mysql.connector

class DatabaseConnection():
    def __init__(self):
        self.connection = self.CreateConnection()
        self.cursor = self.CreateCursor()

    def CreateConnection(self):
        try:
            connection = mysql.connector.connect(host='leia.cs.spu.edu', database='dengl_db', user='dengl', password='dengl12$4410X')
            return connection

        except mysql.connector.Error as failure:
            print("Error connecting to the database", failure)
            exit()

    def CloseConnection(self):
        self.connection.close()
        print("Closed connection to the database")

    def CreateCursor(self):
        return self.connection.cursor()

    def CloseCursor(self):
        self.cursor.close()

    def SelectConcert(self):
        self.cursor.execute("""SELECT concertId FROM Concert;""")
        return self.cursor.fetchall()

    def SelectConcertValues(self, id):
        self.cursor.execute(f"""SELECT location, date FROM Concert WHERE concertId = \'{id}\';""")
        return self.cursor.fetchall()

    def SelectConcertArtist(self, id):
        self.cursor.execute(f"""SELECT B.name FROM Band B
                                        JOIN BandConcert BC ON BC.bandId = B.bandId
                                        JOIN Concert C ON C.concertId = BC.concertId
                                        WHERE C.concertId = \'{id}\';""")
        return self.cursor.fetchall()

    def SelectConcertSongs(self, concert):
        self.cursor.execute(f"""SELECT S.name FROM Songs S
                                JOIN SongConcert SC ON S.songId = SC.songId
                                JOIN Concert C ON C.concertId = SC.concertId
                                WHERE C.concertId = \'{concert}\'
                                ;""")
        return self.cursor.fetchall()

    def RemoveFromConcert(self, concert):
        self.cursor.execute(f"""DELETE FROM SongConcert WHERE concertId=\'{concert}\';
                                        DELETE FROM BandConcert WHERE concertId=\'{concert}\';
                                        DELETE FROM Concert WHERE concertId=\'{concert}\';""")
        return self.cursor.fetchall()

    #def AddConcert(self, bands, songs, location, date):
        

    def SelectBands(self):
        self.cursor.execute("""SELECT name FROM Band;""")
        return self.cursor.fetchall()
    
    def SelectBandsArtist(self, artists):
        self.cursor.execute(f"""SELECT A.name 
                                FROM Artist A
                                JOIN BandArtist BA ON A.artistId = BA.artistId
                                JOIN Band B ON BA.bandId = B.bandId
                                WHERE B.name = \'{artists}\';""")
        return self.cursor.fetchall()
    
    def SelectAlbums(self):
        self.cursor.execute("""SELECT name FROM Album;""")
        return self.cursor.fetchall()
    
    def SelectAlbumsSong(self, album):
        self.cursor.execute(f"""SELECT S.name FROM Songs S
                                JOIN SongAlbum SA ON S.songId = SA.songId
                                JOIN Album A ON SA.albumId = A.albumId
                                WHERE A.name = \'{album}\';""")
        return self.cursor.fetchall()
    
    def SelectAlbumsLabel(self, album):
        self.cursor.execute(f"""SELECT L.name
                                FROM Album A
                                JOIN Label L ON A.labelId = L.labelId
                                WHERE A.name = \'{album}\';""")
        return self.cursor.fetchall()

    def SelectAlbumsGenre(self, album):
        self.cursor.execute(f"""SELECT G.name 
                                FROM Album A
                                JOIN Genre G ON A.genreId = G.genreId
                                WHERE A.name = \'{album}\';""")
        return self.cursor.fetchall()

    def SelectSongs(self):
        self.cursor.execute("""SELECT name FROM Songs;""")
        return self.cursor.fetchall()
    
    def SearchforSongs(self, band):
        self.cursor.execute(f"""SELECT S.name 
                                FROM Songs S
                                JOIN SongBand SB ON S.songId = SB.songId
                                JOIN Band B ON SB.bandId = B.bandId
                                WHERE B.name = \'{band}\';""")
        return self.cursor.fetchall()
    
    def GetBandFromSongName(self, song_name):
        self.cursor.execute(f"""SELECT B.name 
                                FROM Band B
                                JOIN SongBand SB ON B.bandId = SB.bandId
                                JOIN Songs S ON SB.songId = S.songId
                                WHERE S.name = \'{song_name}\';""")
        return self.cursor.fetchall()