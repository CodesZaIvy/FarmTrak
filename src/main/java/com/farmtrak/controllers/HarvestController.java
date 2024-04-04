package com.farmtrak.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Harvest;

public class HarvestController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    
        String farmLocation = request.getParameter("farmLocation");
        String cropType = request.getParameter("cropType");
        String contactInfo =request.getParameter("contactInfo");
        String expectedHarvestDate = request.getParameter("expaectedHarvestDate");
        String planningDate = request.getParameter("planningDate");
        String cultivationMethods = request.getParameter("cultivationMethods");
        // Create a Harvest object
        @SuppressWarnings("unused")
        Harvest Harvest = new Harvest(farmLocation, cropType, contactInfo, expectedHarvestDate, planningDate, cultivationMethods);

        // Save harvest data to a database
        com.farmtrak.model.Harvest.saveToDatabase();
        

        response.sendRedirect("transport.jsp"); // Redirect to the next step
    }
}

