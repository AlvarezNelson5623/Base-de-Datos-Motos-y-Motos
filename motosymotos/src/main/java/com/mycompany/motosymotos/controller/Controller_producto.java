/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.controller;

import com.mycompany.motosymotos.model.Producto;
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
public class Controller_producto {
    
    public static void agregar_producto(Producto pdt) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("INSERT INTO producto VALUES (null,'"+pdt.getNombre()+"','"+pdt.getMarca()+"',"
                    + "'"+pdt.getPrecio_venta()+"','"+pdt.getPrecio_compra()+"','"+pdt.getExistencias_disponibles()+"',"
                    + "'"+pdt.getInventario_minimo()+"','"+pdt.getUbicacion_bodega()+"')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro Fallido");
        }
    }
    
    public static void cargar_producto(JTable tabla , DefaultTableModel modelo) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM producto");
            modelo.setRowCount(0);
            while (rs.next()){
                Object[]fila = {
                    rs.getInt("id_producto"),rs.getString("Nombre"),rs.getString("Marca"),
                    rs.getDouble("Precio_venta"),rs.getDouble("Precio_compra"),rs.getInt("Existencias_disponibles"),
                    rs.getInt("Inventario_minimo"),rs.getString("Ubicacion_bodega")
                };
                modelo.addRow(fila);
            }   } catch (SQLException ex) {
            Logger.getLogger(Controller_producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void actualizar_producto(Producto pdt) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("UPDATE producto SET Nombre='"+pdt.getNombre()+"', Marca='"+pdt.getMarca()+"',"
                    + "Precio_venta='"+pdt.getPrecio_venta()+"',Precio_compra='"+pdt.getPrecio_compra()+"',Existencias_disponibles='"+pdt.getExistencias_disponibles()+"',"
                    + "Inventario_minimo='"+pdt.getInventario_minimo()+"',Ubicacion_bodega='"+pdt.getUbicacion_bodega()+"' WHERE id_producto = '"+pdt.getId_producto()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_producto.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Actualización Fallida");
        }
    }
    
    public static void eliminar_producto(int id, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("DELETE FROM producto where id_producto = '"+id+"'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_empleado.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
}
