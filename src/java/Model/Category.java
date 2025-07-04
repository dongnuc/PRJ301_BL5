/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Category {
    private int idCate;
    private String nameCate;

    public Category(int idCate, String nameCate) {
        this.idCate = idCate;
        this.nameCate = nameCate;
    }

    public int getIdCate() {
        return idCate;
    }

    public void setIdCate(int idCate) {
        this.idCate = idCate;
    }

    public String getNameCate() {
        return nameCate;
    }

    public void setNameCate(String nameCate) {
        this.nameCate = nameCate;
    }

    @Override
    public String toString() {
        return "Category{" + "idCate=" + idCate + ", nameCate=" + nameCate + '}';
    }
    
    
}
