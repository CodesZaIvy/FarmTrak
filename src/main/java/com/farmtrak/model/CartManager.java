package com.farmtrak.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

public class CartManager {
    public static List<CartItem> getCart(HttpSession session) {
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }
        return cart;
    }

    public static class CartItem {
        private String itemName;
        private Object price;

        public CartItem(String itemName, Object price) {
            this.itemName = itemName;
            this.price = price;
        }

        public String getItemName() {
            return itemName;
        }

        public Object getPrice() {
            return price;
        }

        public double getPriceAsDouble() {
            return (price instanceof Number) ? ((Number) price).doubleValue() : 0.0;
        }
    }

    public static void addItemToCart(HttpSession session, String itemName, Object price) {
        List<CartItem> cart = getCart(session);
        cart.add(new CartItem(itemName, price));
    }

    public static void removeItemFromCart(HttpSession session, int index) {
        List<CartItem> cart = getCart(session);
        if (index >= 0 && index < cart.size()) {
            cart.remove(index);
        }
    }
}