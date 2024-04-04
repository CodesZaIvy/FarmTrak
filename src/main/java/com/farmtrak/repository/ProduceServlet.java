package com.farmtrak.repository;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Farm;



public class ProduceServlet extends HttpServlet {

    // This map holds the produce items available for sale
    private Map<String, Produce> produceItems;

    // This map holds the user's shopping cart
    private Map<String, Integer> shoppingCart;

    // Initialize produce items and shopping cart
    public void init() {
        produceItems = new HashMap<>();
        shoppingCart = new HashMap<>();

        // Populate produce items
        produceItems.put("Onions", new Produce("Onions", 100, 250, "Organic"));
        produceItems.put("Cabbages", new Produce("Cabbages", 50, 300, "Non-GMO"));
        // Add more produce items here...
    }

    // GET request handler
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action != null) {
            switch (action) {
                case "addToCart":
                    addToCart(request, response);
                    break;
                case "viewCart":
                    viewCart(request, response);
                    break;
                case "placeOrder":
                    placeOrder(request, response);
                    break;
                default:
                    // Handle other actions or invalid actions
                    break;
            }
        } else {
            // Display produce items for sale
            displayProduceItems(request, response);
        }
    }

    // Display produce items for sale
    private void displayProduceItems(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("produceItems", produceItems.values());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/farmerDashboard.jsp");
        dispatcher.forward(request, response);
    }

    // Add item to the cart
    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String itemName = request.getParameter("itemName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        shoppingCart.put(itemName, quantity);

        // Redirect to the produce items page
        response.sendRedirect(request.getContextPath() + "/produce");
    }

    // View shopping cart
    private void viewCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("shoppingCart", shoppingCart);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(request, response);
    }

    // Place order
    private void placeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle order placement logic here
    }

    public List<com.farmtrak.model.Produce> getProduce() {
         
        throw new UnsupportedOperationException("Unimplemented method 'getProduce'");
    }

    public String getFarmerName(com.farmtrak.model.Produce produce) {
         
        throw new UnsupportedOperationException("Unimplemented method 'getFarmerName'");
    }

     public List<Farm> getFarms() {
         
        throw new UnsupportedOperationException("Unimplemented method 'getFarms'");
    }

      public String getFarmerName(Farm farm) {
         
        throw new UnsupportedOperationException("Unimplemented method 'getFarmerName'");
    }


// Class representing a produce item
public class Produce {
    private String name;
    private int quantity;
    private double price;
    private String certification;

    public Produce(String name, int quantity, double price, String certification) {
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.certification = certification;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCertification() {
        return certification;
    }

    public void setCertification(String certification) {
        this.certification = certification;
    }

} 
}
