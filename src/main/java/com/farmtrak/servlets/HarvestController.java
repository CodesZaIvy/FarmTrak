package com.farmtrak.servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Harvest;

public class HarvestController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String produceQuantities = request.getParameter("produceQuantities");
        String quality = request.getParameter("quality");
        String certifications = request.getParameter("certifications");

         // Create a Harvest object
        Harvest harvest = new Harvest(produceQuantities, quality, certifications);

        // Save harvest data to a database
        Harvest.saveToDatabase();
        

        response.sendRedirect("transport.jsp"); // Redirect to the next step
    }
}

