package com.farmtrak.servlets;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Produce;
import com.mysql.cj.xdevapi.Client;


@WebServlet("/produce")
public class ProduceServlet extends HttpServlet  {
    private static final long serialVersionUID = 1L;
    private final List<Produce> produceList = new ArrayList<>();
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve produce data
        request.setAttribute("produceList", produceList);

        // Forward the request to the produce.jsp page for display
        request.getRequestDispatcher("/produce.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle add produce request
        String name = request.getParameter("name");
        String quantityStr = request.getParameter("quantity");
        String harvestDateStr = request.getParameter("harvestDate");

        // Validation and conversion
        double quantity = 0.0;
        Date harvestDate = null;

        try {
            quantity = Double.parseDouble(quantityStr);
            harvestDate = dateFormat.parse(harvestDateStr);

            // Create a new produce entry
            Produce newProduce = new Produce();
            newProduce.setName(name);
            newProduce.setQuantity(quantity);
            newProduce.setHarvestDate(harvestDate);

            // Add the new produce entry to the list
            synchronized (produceList) {
                produceList.add(newProduce);
            }

            // Redirect to the produce page to display the updated list
            response.sendRedirect(request.getContextPath() + "/produce");
        } catch (NumberFormatException | ParseException e) {
            // Log the exception or provide a user-friendly error message
            e.printStackTrace(); // Log or handle appropriately
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }

    public List<Produce> getProduce() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getProduce'");
    }

    public List<Farm> getFarms() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getFarms'");
    }

    public String getFarmerName(Produce produce) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getFarmerName'");
    }

    public String getClient(Client client) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getClient'");
}

    public String getFarmerName(Farm farm) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getFarmerName'");
    }
}

