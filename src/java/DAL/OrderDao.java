/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Context.DBContext;
import Model.Item;
import Model.Order;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDao extends DBContext {

    public void insertOrder(int oid, int idAcc, Date date, double total) {
        String query = "INSERT INTO [dbo].[Order]\n"
                + "           ([oId]\n"
                + "           ,[AccountId]\n"
                + "           ,[OrderDate]\n"
                + "           ,[TotalBill])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, oid);
            ps.setInt(2, idAcc);
            ps.setDate(3, sqlDate);
            ps.setDouble(4, total);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String query = "select * from [Order]";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getDouble(4));
                list.add(o);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int countBill() {
        String query = "select COUNT(ord.oid)\n"
                + "from [Order] ord";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public static void main(String[] args) {
        OrderDao dao = new OrderDao();
//        Date date = new Date();
//        dao.insertOrder("20240310", 02, date, 10);
//        List<Order> list = dao.getAllOrder();
//        for (Order order : list) {
//            System.out.println(order.toString());
//        }
System.out.println(dao.countBill());
    }

}
