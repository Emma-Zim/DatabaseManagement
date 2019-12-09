import mysql.connector

class DatabaseConnection():
    def __init__(self):
        self.connection = self.CreateConnection()
        self.cursor = self.CreateCursor()

    def CreateConnection(self):
        try:
            connection = mysql.connector.connect(host='leia.cs.spu.edu', database='sandvickk_db', user='sandvickk', password='sandvickk16$4410X')
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
                                WHERE C.concertId = \'{concert}\';""")
        return self.cursor.fetchall()

    def RemoveFromConcert(self, concert):
        self.cursor.execute(f"""DELETE FROM SongConcert WHERE concertId=\'{concert}\';
                                        DELETE FROM BandConcert WHERE concertId=\'{concert}\';
                                        DELETE FROM Concert WHERE concertId=\'{concert}\';""")
        return self.cursor.fetchall()

    def SelectBands(self):
        self.cursor.execute("""SELECT * FROM Band;""")
        return self.cursor.fetchall()

    def SelectAlbum(self):
        self.cursor.execute("""SELECT * FROM Album;""")
        return self.cursor.fetchall()

    def SelectSongs(self):
        self.cursor.execute("""SELECT * FROM Songs;""")
        return self.cursor.fetchall()

    def SelectAlbumsFromBand(self, id):
        self.cursor.execute(f"""SELECT A.name, A.recordingType FROM Album A
                                        JOIN BandAlbum BA ON A.albumId=BA.albumId
                                        JOIN Band B ON BA.bandId=B.bandId
                                        WHERE B.bandId = \'{id}\';""")
        return self.cursor.fetchall()


    def SelectSongsFromAlbum(self, id):
        self.cursor.execute(f"""SELECT S.name, S.lyrics FROM Songs S
                                        JOIN SongAlbum SA ON S.songId=SA.songId
                                        JOIN Album A ON SA.albumId=A.albumId
                                        WHERE A.albumId = \'{id}\';""")
        return self.cursor.fetchall()

    def SelectMembersFromBand(self, id):
        self.cursor.execute(f"""SELECT A.name FROM Artist A
                                        JOIN BandArtist BA ON A.artistId=BA.artistId
                                        JOIN Band B ON B.bandId=BA.bandId
                                        WHERE B.bandId = \'{id}\';""")
        return self.cursor.fetchall()
