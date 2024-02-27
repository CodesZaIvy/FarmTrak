package com.farmtrak.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve values from the login form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Hardcoded credentials for demonstration
        String validEmail = "mkulima@example.com";
        String validPassword = "pass123";

        // Check if the provided credentials are valid
        if (email.equals(validEmail) && password.equals(validPassword)) {
            // Successful login
            // For simplicity, let's just print the values for demonstration
            System.out.println("Login Successful!");
            System.out.println("Email: " + email);
            System.out.println("Password: " + password);

            response.sendRedirect("success.jsp");
        } else {
            // Invalid credentials, redirect back to the login page with an error message
            // For simplicity, let's just print the values for demonstration
            System.out.println("Login Failed. Invalid credentials.");
            System.out.println("Email: " + email);
            System.out.println("Password: " + password);

            response.sendRedirect("index.jsp?error=true");
        }
    }
}

