/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import DAL.ProductDao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    private List<Item> listCart;

    public Cart() {
        listCart = new ArrayList<>();
    }

    public List<Item> getListCart() {
        return listCart;
    }

    public void setListCart(List<Item> listCart) {
        this.listCart = listCart;
    }

    public String convertItem(Item item) {
        String itemText = "";
        itemText += item.getPro().getId() + ":";
        itemText += item.getQuantity() + ":";
        itemText += item.getPrice() + "-";

        return itemText;
    }

    public String convertListToS(List<Item> list) {
        String listText = "";
        try {
            for (Item item : list) {
                listText += convertItem(item);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listText;
    }

    public List<Item> convertStringToC(String cookieCart) {
        listCart = new ArrayList<>();
        ProductDao dao = new ProductDao();
        try {
            String[] eachItem = cookieCart.split("-");
            for (int i = 0; i < eachItem.length; i++) {
                String[] eachAttribute = eachItem[i].split(":");
                int id = Integer.parseInt(eachAttribute[0]);
                Product proCart = dao.getProByID(id);
                int quantity = Integer.parseInt(eachAttribute[1]);
                double price = Double.parseDouble(eachAttribute[2]);
                listCart.add(new Item(proCart, quantity, price));
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return listCart;
    }

    public double getTotal() {
        double total = 0;
        for (Item item : listCart) {
            total += (item.getPrice() * item.getQuantity());
        }
        return total;
    }

    public Item getItemById(int id) {
        for (Item item : listCart) {
            if (item.getPro().getId() == id) {
                return item;
            }
        }
        return null;
    }

}
