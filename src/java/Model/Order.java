/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Order {
    private int id, customerID;
    private Date date;
    private double total;

    public Order(int id, int customerID, Date date, double total) {
        this.id = id;
        this.customerID = customerID;
        this.date = date;
        this.total = total;
    }
    
    
    
    
    public Order() {
    }

    public Order(int id, int customerID, Date date) {
        this.id = id;
        this.customerID = customerID;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", customerID=" + customerID + ", date=" + date.toString() + "total:" + total + '}';
    }
    
    
    
}
