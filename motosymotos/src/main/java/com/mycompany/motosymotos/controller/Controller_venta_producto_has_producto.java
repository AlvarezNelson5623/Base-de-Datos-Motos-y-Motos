/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.controller;

import com.mycompany.motosymotos.model.Venta_producto_has_producto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Nelson Alvarez
 */
public class Controller_venta_producto_has_producto {
    public static void agregar_venta_producto_has_producto(Venta_producto_has_producto vpdt) {

        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO Venta_producto_has_producto VALUES ('"+vpdt.getId_venta_producto()+"',"
                    + "'"+vpdt.getId_producto()+"','"+vpdt.getCantidad_prodcuto()+"')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
             JOptionPane.showMessageDialog(null, "Registro Fallido");
            Logger.getLogger(Controller_venta_producto_has_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void cargar_venta_producto_has_producto(JTable tabla , DefaultTableModel modelo) {

        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM venta_producto_has_producto");
            modelo.setRowCount(0);
            while (rs.next()){
                Object[]fila = {
                    rs.getInt("id_venta_producto"),rs.getInt("Id_producto"),rs.getInt("Cantidad_producto")
                };
                modelo.addRow(fila);              
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto_has_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void actualizar_venta_producto_has_producto(Venta_producto_has_producto vpdt) {

        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("SET SQL_SAFE_UPDATES = 0;");
            st.execute("UPDATE venta_producto_has_producto SET Cantidad_producto='"+vpdt.getCantidad_prodcuto()+"'"
                    + " WHERE id_venta_producto='"+vpdt.getId_venta_producto()+"' AND "
                    + "Id_producto='"+vpdt.getId_producto()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto_has_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Actualización Fallida");
        }
    }
    
    public static void eliminar_venta_producto_has_producto(int id_venta, int id_producto, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("SET SQL_SAFE_UPDATES = 0;");
            st.execute("DELETE FROM Venta_producto_has_producto  "
                    + "WHERE id_venta_producto='"+id_venta+"' AND "
                    + "Id_producto='"+id_producto+"'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
}
