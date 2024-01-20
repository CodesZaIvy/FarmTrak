package com.farmtrak.servlets;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Harvest;

import java.io.IOException;

public class FarmController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String farmLocation = request.getParameter("farmLocation");
        String cropType = request.getParameter("cropType");
        String contactInfo = request.getParameter("contactInfo");
        String expectedHarvestDate = request.getParameter("expectedHarvestDate");
        String planningDate = request.getParameter("planningDate");
        String cultivationMethods = request.getParameter("cultivationMethods");

        // Save data to a database or perform necessary actions

        Harvest.saveToDatabase();

        response.sendRedirect("harvest.jsp"); // Redirect to the next step
    }
}

