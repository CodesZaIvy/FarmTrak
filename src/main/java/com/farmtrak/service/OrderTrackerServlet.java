package com.farmtrak.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/orderTrackerServlet")
public class OrderTrackerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(OrderTrackerServlet.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        response.sendRedirect("orderManagement.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Object ordersObj = session.getAttribute("orders");
        List<Order> orders = null;
        if (ordersObj instanceof List<?>) {
            orders = (List<Order>) ordersObj;
        }

        if (orders == null) {
            orders = new ArrayList<>();
            session.setAttribute("orders", orders);
        }

        PrintWriter out = response.getWriter();
        ObjectMapper mapper = new ObjectMapper();

        try {
            if (action != null) {
                switch (action) {
                    case "add":
                        try {
                            int id = Integer.parseInt(request.getParameter("id"));
                            String status = request.getParameter("status");
                            String location = request.getParameter("location");

                            LOGGER.info("Adding order with ID: " + id + ", Status: " + status + ", Location: " + location);

                            Order newOrder = new Order(id, status, location);
                            orders.add(newOrder);

                            out.print(mapper.writeValueAsString("Order added successfully"));
                        } catch (NumberFormatException e) {
                            LOGGER.severe("Invalid order ID: " + request.getParameter("id"));
                            out.print(mapper.writeValueAsString("Invalid order ID"));
                        }
                        break;

                    case "getOrders":
                        out.print(mapper.writeValueAsString(orders));
                        break;

                    default:
                        LOGGER.warning("Invalid action: " + action);
                        out.print(mapper.writeValueAsString("Invalid action"));
                }
            } else {
                LOGGER.warning("Missing action parameter");
                out.print(mapper.writeValueAsString("Missing action parameter"));
            }
        } catch (Exception e) {
            LOGGER.severe("Error processing request: " + e.getMessage());
            out.print(mapper.writeValueAsString("Error processing request: " + e.getMessage()));
        } finally {
            out.flush();
        }
    }

    public static class Order {
        private int id;
        private String status;
        private String location;

        public Order(int id, String status, String location) {
            this.id = id;
            this.status = status;
            this.location = location;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }

        public String getLocation() {
            return location;
        }

        public void setLocation(String location) {
            this.location = location;
        }
    }
}
