package com.farmtrak.model;

public class Produce {

    private String name;
    private int quantity;
    private double price;
    private String certification;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Produce [name=" + name + ", quantity=" + quantity + ", price=" + price + ", certification="
                + certification + "]";
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

    public Produce(String name, int quantity, double price, String certification) {
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.certification = certification;
    }

    
}
