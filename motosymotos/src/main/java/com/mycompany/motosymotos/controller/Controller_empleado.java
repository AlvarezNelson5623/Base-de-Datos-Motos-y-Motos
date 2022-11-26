/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.controller;

import com.mycompany.motosymotos.model.Empleado;
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
public class Controller_empleado {
    public static void guardar_empleado(Empleado emp) {
        try {
            Statement st= Conexion.getConexion().createStatement();
            st.execute("INSERT INTO empleado VALUES('"+emp.getDoc_empleado()+"','"+emp.getNombres()+"','"+emp.getApellidos()+"','"+emp.getNum_telefono()+"','"+emp.getDireccion()+"','"+emp.getFecha_nacimiento()+"','"+emp.getEmail()+"','"+emp.getPorcentaje_pago()+"','"+emp.getId_sistema_social_eps()+"','"+emp.getId_sistema_social_fondo_pension()+"','"+emp.getId_sistema_social_arl()+"')");
            JOptionPane.showMessageDialog(null, "Registro Exitoso");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_empleado.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en el Registro");
        }
    }
    
    public static void cargar_empleados(JTable tabla, DefaultTableModel modelo) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM empleado");
            modelo.setRowCount(0);
            while (rs.next()){
                Object[]fila = {rs.getInt("Doc_empleado"),rs.getString("nombres"),rs.getString("apellidos"),rs.getString("num_telefono"),rs.getString("direccion"),rs.getString("fecha_nacimiento"),rs.getString("email"),rs.getString("porcentaje_pago"),rs.getString("Id_sistema_social_eps"),rs.getString("Id_sistema_social_fondo_pension"),rs.getString("Id_sistema_social_arl")};
                modelo.addRow(fila);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Controller_empleado.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void actualizar_empleado(Empleado emp){
        try {
            Statement st= Conexion.getConexion().createStatement();
            st.execute("UPDATE empleado SET Nombres ='"+emp.getNombres()+"',Apellidos='"+emp.getApellidos()+"',Num_telefono='"+emp.getNum_telefono()+"',Direccion='"+emp.getDireccion()+"',Fecha_nacimiento='"+emp.getFecha_nacimiento()+"',Email='"+emp.getEmail()+"',Porcentaje_pago='"+emp.getPorcentaje_pago()+"',Id_sistema_social_eps='"+emp.getId_sistema_social_eps()+"',Id_sistema_social_fondo_pension='"+emp.getId_sistema_social_fondo_pension()+"',Id_sistema_social_arl='"+emp.getId_sistema_social_arl()+"' WHERE Doc_empleado ='"+emp.getDoc_empleado()+"'");
            JOptionPane.showMessageDialog(null, "Actualización Exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_empleado.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Fallo en la actualización");
        }
    }
    
    public static void eliminar_empleado(int id, JTable table, DefaultTableModel model) {
        try {
            Statement st = Conexion.getConexion().createStatement();
            st.execute("DELETE FROM empleado where doc_empleado = '"+id+"'");
            JOptionPane.showMessageDialog(null, "Registro Elminado");
        } catch (SQLException ex) {
            Logger.getLogger(Controller_empleado.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Registro no Elminado");
        }
    }
}
