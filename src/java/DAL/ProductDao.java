/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Context.DBContext;
import Model.Category;
import Model.Product;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class ProductDao extends DBContext {

    public List<Category> getALlCate() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category cate = new Category(rs.getInt(1), rs.getString(2));
                list.add(cate);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Category getCateByID(int cid) {
        String query = "select * from Category where cid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Category(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product pro = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
                list.add(pro);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchProByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where pName like ? ";
//        if(!name.isEmpty()){
//            query += "and pName like %" + name + "%";
//        }
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product pro1 = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
                list.add(pro1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProByID(int id) {
        String query = "select * from Product where pId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Integer> getTopSellPro() {
        List<Integer> list = new ArrayList<>();
        String query = "select Top 5 od.ProductId, SUM(od.Quantity) AS buy\n"
                + "from OrderDetail od\n"
                + "group by od.ProductId \n"
                + "Order by buy DESC";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int proId = rs.getInt("ProductId");
                list.add(proId);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Integer> getProBuyMostRecent() {
        List<Integer> list = new ArrayList<>();
        String query = "SELECT TOP 4 p.pId, SUM(od.Quantity) AS TotalQuantitySold\n"
                + "FROM Product p\n"
                + "JOIN OrderDetail od ON p.pId = od.ProductId\n"
                + "JOIN [Order] o ON od.OrderId = o.oId\n"
                + "GROUP BY p.pId\n"
                + "ORDER BY MAX(o.OrderDate) DESC, SUM(od.Quantity) ASC;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int proId = rs.getInt("pId");
                list.add(proId);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getAllProductByCid(String cId) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where CategoryId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, cId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product pro = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
                list.add(pro);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> get9Product() {
        List<Product> list = new ArrayList<>();
        String query = "select top 9  * from Product";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product pro = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
                list.add(pro);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProNext(int number) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product ORDER BY pId\n"
                + "OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, number);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product pro = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7));
                list.add(pro);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertPro(String name, String img, String price, String quantity, String description, String cateId) {
        String query = "INSERT INTO [dbo].[Product]\n"
                + "           ([pName]\n"
                + "           ,[Image]\n"
                + "           ,[Description]\n"
                + "           ,[Price]\n"
                + "           ,[Quantity]\n"
                + "           ,[CategoryId])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, description);
            ps.setString(4, price);
            ps.setString(5, quantity);
            ps.setString(6, cateId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deletePro(String id) {
        String query = "delete Product where pId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void editPro(String name, String image, String description, String price, String quantity, String cateId, String id) {
        String query = "UPDATE [dbo].[Product]\n"
                + "   SET [pName] = ?\n"
                + "      ,[Image] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[Quantity] = ?\n"
                + "      ,[CategoryId] = ?\n"
                + " WHERE pId = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, description);
            ps.setString(4, price);
            ps.setString(5, quantity);
            ps.setString(6, cateId);
            ps.setString(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void updateQuantity(int quantity,int id){
        String query = "UPDATE [dbo].[Product]\n"
                + "   SET [Quantity] = ?\n"
                + " WHERE pId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
//        List<Product> list = dao.searchProByName("nike");
//        List<Integer> list = dao.getTopSellPro();
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(list.get(i));
//        }
        List<Integer> listMostIn = dao.getProBuyMostRecent();
        List<Product> listMost = new ArrayList<>();
        for (int i = 0; i < listMostIn.size(); i++) {
            Product pro = dao.getProByID(listMostIn.get(i));
            if (pro != null) {
                listMost.add(pro);
            }
        }
        System.out.println(listMost.get(0).toString());
//        boolean status = Boolean.parseBoolean(s)
    }
}
