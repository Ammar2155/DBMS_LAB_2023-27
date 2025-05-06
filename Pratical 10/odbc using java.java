import java.sql.*;

public class OracleJDBCExample {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@localhost:1521:orcl"; // Oracle JDBC connection string
        String user = "sit2";   // Database username
        String password = "sit"; // Database password

        try {
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.OracleDriver");

            try (Connection conn = DriverManager.getConnection(url, user, password)) {
                System.out.println(" Connected to Oracle database!");

                // 1 Create Table
                createTable(conn);
                readData(conn); // Show table after creation

                // 2 Insert Data
                insertData(conn, 101, "Alice", 5000);
                readData(conn); // Show table after insertion
                insertData(conn, 102, "Bob", 3000);
                readData(conn); // Show table after insertion

                // 3 Read Data (already being shown after each action)

                // 4 Update Data
                updateData(conn, 101, 1000);
                readData(conn); // Show table after update

                // 5 Delete Data
                deleteData(conn, 102);
                readData(conn); // Show table after deletion

            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Oracle JDBC Driver not found! Make sure ojdbc17.jar is in the classpath.");
            e.printStackTrace();
        }
    }

    // Method to create a table
    public static void createTable(Connection conn) throws SQLException {
        String sql = "CREATE TABLE Accounts (" +
                     "Account_No INT PRIMARY KEY, " +
                     "Holder_Name VARCHAR2(100), " +  // VARCHAR2 is recommended for Oracle
                     "Balance NUMBER(10,2))";       // NUMBER(10,2) for better precision
        try (Statement stmt = conn.createStatement()) {
            stmt.executeUpdate(sql);
            System.out.println(" Table 'Accounts' created successfully.");
        } catch (SQLException e) {
            System.out.println(" Table might already exist.");
        }
    }

    // Method to insert data
    public static void insertData(Connection conn, int accountNo, String holderName, double balance) throws SQLException {
        String sql = "INSERT INTO Accounts (Account_No, Holder_Name, Balance) VALUES (?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, accountNo);
            pstmt.setString(2, holderName);
            pstmt.setDouble(3, balance);
            pstmt.executeUpdate();
            System.out.println(" Inserted: " + holderName + " with Balance: " + balance);
        }
    }

    // Method to read and display data
    public static void readData(Connection conn) throws SQLException {
        String sql = "SELECT * FROM Accounts";
        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            System.out.println("\n📋 Current Accounts Table:");
            System.out.println("--------------------------------------");
            System.out.printf("| %-10s | %-15s | %-10s |\n", "Account_No", "Holder_Name", "Balance");
            System.out.println("--------------------------------------");
            while (rs.next()) {
                System.out.printf("| %-10d | %-15s | %-10.2f |\n", 
                                  rs.getInt("Account_No"), 
                                  rs.getString("Holder_Name"), 
                                  rs.getDouble("Balance"));
            }
            System.out.println("--------------------------------------\n");
        }
    }

    // Method to update balance
    public static void updateData(Connection conn, int accountNo, double amount) throws SQLException {
        String sql = "UPDATE Accounts SET Balance = Balance + ? WHERE Account_No = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setDouble(1, amount);
            pstmt.setInt(2, accountNo);
            pstmt.executeUpdate();
            System.out.println(" Updated balance for Account_No: " + accountNo);
        }
    }

    // Method to delete an account
    public static void deleteData(Connection conn, int accountNo) throws SQLException {
        String sql = "DELETE FROM Accounts WHERE Account_No = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, accountNo);
            pstmt.executeUpdate();
            System.out.println(" Deleted Account_No: " + accountNo);
        }
    }
