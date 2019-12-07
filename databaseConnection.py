import mysql.connector

class DatabaseConnection():
    def __init__(self):
        self.connection = self.CreateConnection()
        self.cursor = self.CreateCursor()

    def CreateConnection(self):
        try:
            connection = mysql.connector.connect(host='leia.cs.spu.edu', database='zimmermane_db', user='zimmermane', password='zimmermane11$4410X')
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

    def AddConcert(self, bands, songs, location, date):
        

    def SelectBands(self):
        self.cursor.execute("""SELECT * FROM Band;""")
        return self.cursor.fetchall()

    def SelectSongs(self):
        self.cursor.execute("""SELECT * FROM Songs;""")
        return self.cursor.fetchall()
