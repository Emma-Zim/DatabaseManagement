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

    def CloseConnection(self):
        self.connection.close()
        print("Closed connection to the database")

    def CreateCursor(self):
        return self.connection.cursor()

    def CloseCursor(self):
        self.cursor.close()


    def SelectConcert(self):
        self.cursor.execute("""SELECT * FROM Concert;""")
        return self.cursor.fetchall()
