package com.farmtrak.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.farmtrak.repository.DatabaseConnector;

public class Harvest {
    private static String farmLocation;
    private static String cropType;
    private static String contactInfo;
    private static String expectedHarvestDate;
    private static String planningDate;
    private static String cultivationMethods;

    // Constructor
    public Harvest(String farmLocation, String cropType, String contactInfo, String expectedHarvestDate, String planningDate, String cultivationMethods) {
        Harvest.farmLocation = farmLocation;
        Harvest.cropType = cropType;
        Harvest.contactInfo = contactInfo;
        Harvest.expectedHarvestDate = expectedHarvestDate;
        Harvest.planningDate = planningDate;
        Harvest.cultivationMethods = cultivationMethods;
    }
// Method to save harvest data to a database
    public static void saveToDatabase() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DatabaseConnector.getConnection();
            String query = "INSERT INTO harvest_data (farm_location, crop_type, contact_info, expected_harvest_date, planning_date, cultivation_methods) VALUES (?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, farmLocation);
            preparedStatement.setString(2, cropType);
            preparedStatement.setString(3, contactInfo);
            preparedStatement.setString(4, expectedHarvestDate);
            preparedStatement.setString(5, planningDate);
            preparedStatement.setString(6, cultivationMethods);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions appropriately in a real application
        } finally {
            DatabaseConnector.closePreparedStatement(preparedStatement);
            DatabaseConnector.closeConnection(connection);
        }
    }
}
