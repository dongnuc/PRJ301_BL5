/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Product {
    private int id;
    private String name;
    private String image;
    private String description;
    private double price;
    private int quantity;
    private int cate;

    public Product() {
    }

    public Product(int id, String name, String image, String description, double price, int quantity, int cate) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.cate = cate;
    }

    public Product(int id, String name, String image, double price, int quantity, int cate) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.cate = cate;
    }
    
    public Product(int id, int quantity) {
        this.id = id;
        this.quantity = quantity;

    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCate() {
        return cate;
    }

    public void setCate(int cate) {
        this.cate = cate;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", description=" + description + ", price=" + price + ", quantity=" + quantity + ", cate=" + cate + '}';
    }
    
//     public String convertPro(Product pro) {
//        String text = "";
//        text += pro.getId() + ":";
//        text += pro.getName() + ":";
//        text += pro.getImage() + ":";
//        text += pro.getPrice() + ":";
//        text += pro.getQuantity()+ ":";
//        text += pro.getCate() + "-";
//        return text;
//    }
//    
//    public String convertCart(List<Product> listCart){
//        String text = "";
//        for (Product product : listCart) {
//            text += convertPro(product);
//        }
//        return text;
//    }
//    
//    public List<Product> convertStringToCart(String txt){
//        List<Product> listCart = new ArrayList<>();
//        String[] eachPro = txt.split("-");
//        for (int i = 0; i < eachPro.length; i++) {
//            String[] eachAttribute = eachPro[i].split(":");
//            int id = Integer.parseInt(eachAttribute[0]);
//            String name = eachAttribute[1];
//            String image = eachAttribute[2];
//            double price = Double.parseDouble(eachAttribute[3]);
//            int quantity = Integer.parseInt(eachAttribute[4]);
//            int cateId = Integer.parseInt(eachAttribute[5]);
//            Product pro = new Product(id, name, image, price, quantity, cateId);
//            listCart.add(pro);
//        }
//        return listCart;
//    }
    
    
}
