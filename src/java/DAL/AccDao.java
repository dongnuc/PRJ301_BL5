/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Context.DBContext;
import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class AccDao extends DBContext {

    public Account getAcc(String user, String pass) {
        String query = "select * from Account where [User] = ? and Pass = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Account checkAccExits(String user){
        String query = "select * from Account where [User] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void insertAcc(String user, String pass, int roll, String email) {
        String query = "INSERT INTO [dbo].[Account]\n"
                + "           ([User]\n"
                + "           ,[Pass]\n"
                + "           ,[Roll]\n"
                + "           ,[Email])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setInt(3, roll);
            ps.setString(4, email);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public static void main(String[] args) {
        AccDao dao = new AccDao();
        Account acc = dao.checkAccExits("Adam");
        System.out.println(acc.toString());
    }
}
