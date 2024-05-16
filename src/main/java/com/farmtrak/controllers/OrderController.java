package com.farmtrak.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/order")
public class OrderController extends HttpServlet {

    public void init() throws ServletException {
        new OrderController(new DummyOrderService());
    }


    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Extract orderId from request parameter
        Long orderId = Long.parseLong(req.getParameter("orderId"));

        // Call the trackOrder method of OrderController to get order tracking response
        OrderTrackingResponse response = OrderController.trackOrder(orderId);

        // Set response content type
        resp.setContentType("text/html");

        // Write order tracking information to the response
        resp.getWriter().println("<html><body>");
        resp.getWriter().println("<h1>Order Tracking Information</h1>");
        resp.getWriter().println("<p>Status: " + response.getStatus() + "</p>");
        resp.getWriter().println("<p>Location: Latitude " + response.getLocation().getLatitude() + ", Longitude " + response.getLocation().getLongitude() + "</p>");
        resp.getWriter().println("</body></html>");
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        OrderController.orderService = orderService;
    }

    private static OrderService orderService;

    public OrderController(OrderService orderService) {
        OrderController.orderService = orderService;
    }

    public static OrderTrackingResponse trackOrder(Long orderId) {
        Order order = orderService.getOrder(orderId);
        OrderTrackingResponse response = new OrderTrackingResponse();
        response.setLocation(order.getLocation());
        response.setStatus(order.getStatus());
        return response;
    }
}

class OrderTrackingResponse {
    private Location location;
    private String status;

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

class Location {
    private double latitude;
    private double longitude;

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}

interface OrderService {
    Order getOrder(Long orderId);
}

class Order {
    private Location location;
    private String status;

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

class DummyOrderService implements OrderService {
    private Map<Long, Order> orders = new HashMap<>();

    @Override
    public Order getOrder(Long orderId) {
        // Dummy implementation, replace with your actual logic to fetch order details
        return orders.getOrDefault(orderId, new Order());
    }

    }
