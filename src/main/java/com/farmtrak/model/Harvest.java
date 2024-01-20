package com.farmtrak.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.farmtrak.database.DatabaseConnector;

public class Harvest {
    private static String produceQuantities;
    private static String quality;
    private static String certifications;

    // Constructors, getters, and setters

    public Harvest(String produceQuantities, String quality, String certifications) {
        Harvest.produceQuantities = produceQuantities;
        Harvest.quality = quality;
        Harvest.certifications = certifications;
    }

    // Getter and setter methods

    public String getProduceQuantities() {
        return produceQuantities;
    }

    public void setProduceQuantities(String produceQuantities) {
        Harvest.produceQuantities = produceQuantities;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        Harvest.quality = quality;
    }

    public String getCertifications() {
        return certifications;
    }

    public void setCertifications(String certifications) {
        Harvest.certifications = certifications;
    }

    // Method to save harvest data to a database
    public static void saveToDatabase() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            connection = DatabaseConnector.getConnection();
            String query = "INSERT INTO harvest_data (produce_quantities, quality, certifications) VALUES (?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, produceQuantities);
            preparedStatement.setString(2, quality);
            preparedStatement.setString(3, certifications);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions appropriately in a real application
        } finally {
            DatabaseConnector.closePreparedStatement(preparedStatement);
            DatabaseConnector.closeConnection(connection);
        }
    }
}

