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
        self.cursor.execute("""SELECT location, date FROM Concert WHERE concertId = \'{}\';""".format(id))
        return self.cursor.fetchall()

    def SelectConcertArtist(self, id):
        self.cursor.execute("""SELECT B.name FROM Band B
                                        JOIN BandConcert BC ON BC.bandId = B.bandId
                                        JOIN Concert C ON C.concertId = BC.concertId
                                        WHERE C.concertId = \'{}\';""".format(id))
        return self.cursor.fetchall()

    def SelectConcertSongs(self, concert):
        self.cursor.execute("""SELECT S.name FROM Songs S
                                JOIN SongConcert SC ON S.songId = SC.songId
                                JOIN Concert C ON C.concertId = SC.concertId
                                WHERE C.concertId = \'{}\';""".format(concert))
        return self.cursor.fetchall()

    def RemoveFromConcert(self, concert):
        self.cursor.execute("""DELETE FROM SongConcert WHERE concertId=\'{}\';""".format(concert))
        self.cursor.execute("""DELETE FROM BandConcert WHERE concertId=\'{}\';""".format(concert))
        self.cursor.execute("""DELETE FROM Concert WHERE concertId=\'{}\';""".format(concert))
        self.connection.commit()
        return True

    def AddConcert(self, bands, songs, location, date):
        bandIds = []
        songIds = []
        locations = {1: "Seattle, WA", 2: "Portland, OR", 3: "Washington, DC", 4: "New York City, NY", 5: "San Francisco, CA"}

        # get the location
        loc = locations[location]

        # get the bandIds
        for b in bands:
            bandId = "B"
            for x in range(0, 4 - len(str(b + 1))):
                bandId = bandId + "0"
            bandId = bandId + str(b + 1)
            bandIds.append(bandId)

        # get the songIds
        for s in songs:
            songId = "S"
            for x in range(0, 4 - len(str(s + 1))):
                songId = songId + "0"
            songId = songId + str(s + 1)
            songIds.append(songId)

        print(bandIds)

        # get the concertId
        self.cursor.execute("""SELECT COUNT(concertId) FROM Concert;""")
        concertVal = self.cursor.fetchone()[0] + 1
        concertId = "C"
        for x in range(0, 4 - len(str(concertVal))):
            concertId = concertId + "0"
        concertId = concertId + str(concertVal)

        self.cursor.execute("""INSERT INTO Concert (concertId, location, date) VALUES (\'{}\', \'{}\', \'{}\');""".format(concertId, loc, date))

        for s in songIds:
            self.cursor.execute("""INSERT INTO SongConcert (concertId, songId) VALUES (\'{}\', \'{}\')""".format(concertId, s))

        for b in bandIds:
            self.cursor.execute("""INSERT INTO BandConcert (concertId, bandId) VALUES (\'{}\', \'{}\')""".format(concertId, b))

        self.connection.commit()
        return True

    def SelectBands(self):
        self.cursor.execute("""SELECT * FROM Band;""")
        return self.cursor.fetchall()

    def SelectSongs(self):
        self.cursor.execute("""SELECT * FROM Songs;""")
        return self.cursor.fetchall()
