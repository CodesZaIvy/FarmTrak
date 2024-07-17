package com.farmtrak.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

public class CartManager {

    public static class CartItem {
        private String itemName;
        private double price;

        public CartItem(String itemName, Object price2) {
            this.itemName = itemName;
            this.price = (double) price2;
        }

        public String getItemName() {
            return itemName;
        }

        public double getPrice() {
            return price;
        }
    }

    public static void addItemToCart(HttpSession session, String itemName, Object price) {
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        cart.add(new CartItem(itemName, price));
        session.setAttribute("cart", cart);
    }

    public static List<CartItem> getCart(HttpSession session) {
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        return cart;
    }

    public static void removeItemFromCart(HttpSession session, int index) {
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart != null && index >= 0 && index < cart.size()) {
            cart.remove(index);
        }
        session.setAttribute("cart", cart);
    }

    
}


