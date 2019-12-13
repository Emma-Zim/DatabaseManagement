import mysql.connector

class DatabaseConnection():
    def __init__(self):
        self.connection = self.CreateConnection()
        self.cursor = self.CreateCursor()

    def CreateConnection(self):
        try:
            connection = mysql.connector.connect()
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
        print(concert)
        if not self.cursor.execute("""DELETE FROM SongConcert WHERE concertId=\'{}\';""".format(concert)) and not self.cursor.execute("""DELETE FROM BandConcert WHERE concertId=\'{}\';""".format(concert)) and not self.cursor.execute("""DELETE FROM Concert WHERE concertId=\'{}\';""".format(concert)):
            self.connection.commit()
            return True
        else:
            return False

    def AddConcert(self, bands, songs, location, date):
        # get the concertId
        self.cursor.execute("""SELECT COUNT(concertId) FROM Concert;""")
        concertVal = self.cursor.fetchone()[0] + 1
        concertId = "C"
        for x in range(0, 4 - len(str(concertVal))):
            concertId = concertId + "0"
        concertId = concertId + str(concertVal)

        self.cursor.execute("""INSERT INTO Concert (concertId, location, date) VALUES (\'{}\', \'{}\', \'{}\');""".format(concertId, location, date))

        for s in songs:
            self.cursor.execute("""INSERT INTO SongConcert (concertId, songId) VALUES (\'{}\', \'{}\')""".format(concertId, s))

        for b in bands:
            self.cursor.execute("""INSERT INTO BandConcert (concertId, bandId) VALUES (\'{}\', \'{}\')""".format(concertId, b))

        self.connection.commit()
        return True

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

    def SelectAlbum(self):
        self.cursor.execute("""SELECT * FROM Album;""")
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

    def SearchforBands(self, band):
        self.cursor.execute(f"""SELECT B.name
                                FROM Band B
                                WHERE B.name LIKE \'%{band}%\';""")
        return self.cursor.fetchall()

    def SelectPlaylist(self):
        self.cursor.execute("""SELECT playlistId FROM Playlist;""")
        return self.cursor.fetchall()

    def SelectPlaylistName(self, playlistID):
        self.cursor.execute(f"""SELECT name
                                FROM Playlist
                                WHERE playlistId = \'{playlistID}\';""")
        return self.cursor.fetchall()

    def ViewPlaylistDuration (self, playlist):
        self.cursor.execute(f"""SELECT TIME_TO_SEC(S.duration)
                                FROM Songs S
                                JOIN SongPlaylist SP on S.songId = SP.songId
                                JOIN Playlist P on SP.playlistId = P.playlistId
                                WHERE P.playlistId = \'{playlist}\';""")
        return self.cursor.fetchall()

    def UpdateConcert(self, concert, location, date):
        self.cursor.execute("""UPDATE Concert SET location = \'{}\', date = \'{}\' WHERE concertId = \'{}\';""".format(location, date, concert))
        self.connection.commit()
        return True

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
