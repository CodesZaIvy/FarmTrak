package com.farmtrak.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.farmtrak.model.CartManager;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    private static final Object price = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String orderName = request.getParameter("orderName");
        CartManager.addItemToCart(session, orderName, price);

        response.sendRedirect("cart.jsp");

        List<String> orders = null;
        Object ordersObject = session.getAttribute("orders");

        if (ordersObject instanceof List<?>) {
            List<?> tempOrders = (List<?>) ordersObject;
            boolean allStrings = true;
            for (Object obj : tempOrders) {
                if (!(obj instanceof String)) {
                    allStrings = false;
                    break;
                }
            }
            if (allStrings) {
                orders = (List<String>) tempOrders;
            } else {
                orders = new ArrayList<>();
            }
        } else {
            orders = new ArrayList<>();
        }

        if (orderName != null && !orderName.trim().isEmpty()) {
            orders.add(orderName);
        }

        session.setAttribute("orders", orders);
        response.sendRedirect("orderManagement.jsp");
    }
}



    