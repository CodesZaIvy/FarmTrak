package com.farmtrak.model;

import java.util.Date;

public class Produce {
    private int id;

    public Produce() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Produce(int id, String name, double quantity, Date harvestDate) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.harvestDate = harvestDate;
    }

    private String name;
    private double quantity;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getHarvestDate() {
        return harvestDate;
    }

    public void setHarvestDate(Date harvestDate) {
        this.harvestDate = harvestDate;
    }

    private Date harvestDate;

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    // Constructors, getters, and setters
}
