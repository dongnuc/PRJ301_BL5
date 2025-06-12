/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Item {
    private Product pro;
    private int quantity;
    private double price;
    private double total;

    public Item(Product pro, int quantity, double price) {
        this.pro = pro;
        this.quantity = quantity;
        this.price = price;
    }

    public Item(Product pro, int quantity, double price, double total) {
        this.pro = pro;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
    }
    
    

    public Item() {
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    public Product getPro() {
        return pro;
    }

    public void setPro(Product pro) {
        this.pro = pro;
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

    @Override
    public String toString() {
        return "Item{" + "pro=" + pro + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
    
}
