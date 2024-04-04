package com.farmtrak.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.impl.Log4jApiLogFactory;

public class DatabaseConnector {

    private static final Log logger = Log4jApiLogFactory.getLog(DatabaseConnector.class);
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/mysql";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "SUN123,mysql";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            logger.error("MySQL JDBC Driver not found", e);
            throw new RuntimeException("MySQL JDBC Driver not found", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
    }

    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            logger.error("Error closing connection", e);
        }
    }

    public static void closeResultSet(ResultSet resultSet) {
        try {
            if (resultSet != null && !resultSet.isClosed()) {
                resultSet.close();
            }
        } catch (SQLException e) {
            logger.error("Error closing ResultSet", e);
        }
    }

    public static void closePreparedStatement(PreparedStatement preparedStatement) {
        try {
            if (preparedStatement != null && !preparedStatement.isClosed()) {
                preparedStatement.close();
            }
        } catch (SQLException e) {
            logger.error("Error closing PreparedStatement", e);
        }
    }

    // Example method to retrieve user information from the database
    public static void getUserInfo(String username) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM users WHERE username=root")) {

            preparedStatement.setString(1, username);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                // Process the result set as needed
                while (resultSet.next()) {
                    int userId = resultSet.getInt("id");
                    String userName = resultSet.getString("username");
                    String password = resultSet.getString("password");

                    // Do something with the retrieved data
                    System.out.println("User ID: " + userId + ", Username: " + userName + ", Password: " + password);
                }
            }
        } catch (SQLException e) {
            logger.error("Error retrieving user information", e);
        }
    }
}