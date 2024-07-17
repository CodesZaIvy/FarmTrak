package com.farmtrak.service;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.farmtrak.model.CartManager;
    
    @WebServlet("/RemoveItemServlet")
    public class RemoveItemServlet extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int index = Integer.parseInt(request.getParameter("index"));
    
            HttpSession session = request.getSession();
            CartManager.removeItemFromCart(session, index);
    
            response.sendRedirect("cart.jsp");
        }
    }
    






