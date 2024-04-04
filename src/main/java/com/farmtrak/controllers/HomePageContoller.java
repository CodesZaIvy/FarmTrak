package com.farmtrak.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.farmtrak.model.Farm;
import com.farmtrak.model.Produce;
import com.farmtrak.model.client;
import com.farmtrak.repository.ProduceServlet;

@WebServlet(value = {"/", "/homepage"})
public class HomePageContoller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unused")
    private FarmController farmController;
    private ProduceServlet produceServlet;
    @SuppressWarnings("unused")
    private HarvestController harvestController;

    private String featured;

   



    public void init() {
        try {
            // Assuming ProduceRepository has a constructor with necessary parameters
            farmController = new FarmController(/* constructor parameters if any */);
            produceServlet= new ProduceServlet();
            harvestController = new HarvestController();
        } catch (Exception e) {
            // Log the exception or handle it appropriately
            e.printStackTrace();
        }
    }
    
    

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Produce> produces = produceServlet.getProduce();
            
    System.out.println("produces: " + produces);
    System.out.println("featured: " + this.featured); // Use "this.featured" to refer to the instance variable

    List<Produce> featuredList = produces.subList(produces.size() - 6, produces.size());


    for (Produce produce : featuredList) {
        client.put(produce, produceServlet.getFarmerName(produce));
    }

    List<Farm> farms = produceServlet.getFarms();
    Map<Object, String> farmer = new HashMap<>();
    for (Farm farm : farms) {
        farmer.put(farm, produceServlet.getFarmerName(farm));
    }

    request.setAttribute("produces", featuredList);
    request.setAttribute("farms", farms);
    request.setAttribute("farmer", farmer);

    RequestDispatcher dispatcher = request.getRequestDispatcher("/farmdetails.jsp");
    dispatcher.forward(request, response);
}
}

