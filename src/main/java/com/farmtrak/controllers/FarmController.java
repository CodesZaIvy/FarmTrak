package com.farmtrak.controllers;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FarmController")
public class FarmController extends HttpServlet {
    @SuppressWarnings("unused")
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String farmLocation = request.getParameter("farmLocation");
        String cropType = request.getParameter("cropType");
        String contactInfo = request.getParameter("contactInfo");
        String expectedHarvestDate = request.getParameter("expectedHarvestDate");
        String planningDate = request.getParameter("planningDate");
        String cultivationMethods = request.getParameter("cultivationMethods");

        com.farmtrak.model.Harvest.saveToDatabase();

        response.sendRedirect("farmer.jsp"); // Redirect to the next step
    }
}
