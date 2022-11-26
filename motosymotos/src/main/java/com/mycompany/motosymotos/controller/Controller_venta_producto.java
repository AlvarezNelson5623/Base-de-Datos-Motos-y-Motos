/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.controller;


import com.mycompany.motosymotos.model.Venta_producto;
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
public class Controller_venta_producto {
    public static void agregar_venta_producto(Venta_producto vpdt) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO venta_producto VALUES (null,'"+vpdt.getDoc_empleado()+"',"
                    + "'"+vpdt.getId_cliente()+"','"+vpdt.getFecha_venta()+"','"+0+"')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Registro Fallido");
            Logger.getLogger(Controller_venta_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void cargar_venta_producto(JTable tabla , DefaultTableModel modelo) {

        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM venta_producto");
            modelo.setRowCount(0);
            while (rs.next()){
                Object[]fila = {
                    rs.getInt("id_venta_producto"),rs.getInt("Doc_empleado"),rs.getInt("Id_cliente"),
                    rs.getString("Fecha_venta"),rs.getDouble("Valor_venta")
                };
                modelo.addRow(fila);              
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void actualizar_venta_producto(Venta_producto vpdt) {

        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("UPDATE venta_producto SET Doc_empleado='"+vpdt.getDoc_empleado()+"', Id_cliente='"+vpdt.getId_cliente()+"',"
                    + "Fecha_venta='"+vpdt.getFecha_venta()+"',Valor_venta='"+vpdt.getValor_venta()+"'"
                            + " WHERE id_venta_producto = '"+vpdt.getId_venta_producto()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Actualización Fallida");
        }
    }
    
    public static void eliminar_venta_producto(int id, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("DELETE FROM venta_producto where id_venta_producto = '"+id+"'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_venta_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
}
