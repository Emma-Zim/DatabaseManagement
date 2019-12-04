import mysql.connector

def CreateConnection():
    try:
        connection = mysql.connector.connect(host='leia.cs.spu.edu', database='zimmermane_db', user='zimmermane', password='zimmermane11$4410X')
        return connection

    except mysql.connector.Error as failure:
        print("Error connecting to the database", failure)

def CloseConnection(c):
    c.close()
    print("Closed connection to the database")


def SelectConcert(c):
    c.execute("""SELECT * FROM Concert;""")
    return c.fetchall()
