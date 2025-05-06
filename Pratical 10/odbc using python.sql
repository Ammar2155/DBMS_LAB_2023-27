import pyodbc

# Oracle DSN connection details
dsn_name = "Orcl"  # Replace with your actual DSN
user = "scott"
password = "tiger"

try:
    # Connect to Oracle using DSN
    conn = pyodbc.connect(f"DSN={dsn_name};UID={user};PWD={password}")

    # Create a cursor
    cursor = conn.cursor()

    # 1. Create Table
    #cursor.execute("Drop table acc")
    cursor.execute('''
      CREATE TABLE Acc1 (
        Account_No INT PRIMARY KEY,
        Holder_Name VARCHAR(100),
        Balance FLOAT
            )
    ''')
    print("Table Acc1 created successfully.")

    # 2️ Insert Data
    cursor.execute("INSERT INTO Acc1 VALUES (101, 'Alice', 5000)")
    cursor.execute("INSERT INTO Acc1 VALUES (102, 'Bob', 3000)")
    cursor.execute("INSERT INTO Acc1 VALUES (103, 'Boby', 13000)")

    conn.commit()

    # 3️ Read Data
    cursor.execute("SELECT * FROM Acc1")
    for row in cursor.fetchall():
    	print(row)

    # 4️ Update Data
    print("\nTable Acc1before update.")
    cursor.execute("SELECT * FROM Acc1")
    for row in cursor.fetchall():
    	print(row)

    cursor.execute("UPDATE Acc1 SET Balance = Balance + 1000 WHERE Account_No = 101")
    conn.commit()
    print("\nTable Acc1after update.")
    cursor.execute("SELECT * FROM Acc1")
    for row in cursor.fetchall():
    	print(row)

    # 5️ Delete Data
    cursor.execute("DELETE FROM Accounts WHERE Account_No = 102")
    conn.commit()


    # Close connection
    cursor.close()
    conn.close()

except Exception as e:
    print("Error:", e)
