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

    def ExecuteQuery(self, query):
        self.cursor.execute(query)
        return self.cursor.fetchall()

    def RemoveFromConcert(self, name, location, date):
        self.cursor.execute("""SELECT C.concertId FROM Concert C
                                JOIN BandConcert BC ON BC.concertId=C.concertId
                                JOIN Band B ON B.bandId=BC.bandId
                                WHERE B.name = %s AND C.location = %s AND C.date = %s""", (name, location, date))
        return self.cursor.fetchall()
