/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.model;


/**
 *
 * @author Nelson Alvarez
 */
public class Empleado {
    private int doc_empleado;
    private String nombres;
    private String apellidos;
    private String num_telefono;
    private String direccion;
    private String fecha_nacimiento;
    private String email;
    private String porcentaje_pago;
    private String id_sistema_social_eps;
    private String id_sistema_social_fondo_pension;
    private String id_sistema_social_arl;

    public Empleado(int doc_empleado, String nombres, String apellidos, String num_telefono, String direccion, String fecha_nacimiento, String email, String porcentaje_pago, String id_sistema_social_eps, String id_sistema_social_fondo_pension, String id_sistema_social_arl) {
        this.doc_empleado = doc_empleado;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.num_telefono = num_telefono;
        this.direccion = direccion;
        this.fecha_nacimiento = fecha_nacimiento;
        this.email = email;
        this.porcentaje_pago = porcentaje_pago;
        this.id_sistema_social_eps = id_sistema_social_eps;
        this.id_sistema_social_fondo_pension = id_sistema_social_fondo_pension;
        this.id_sistema_social_arl = id_sistema_social_arl;
    }

    public int getDoc_empleado() {
        return doc_empleado;
    }

    public void setDoc_empleado(int doc_empleado) {
        this.doc_empleado = doc_empleado;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNum_telefono() {
        return num_telefono;
    }

    public void setNum_telefono(String num_telefono) {
        this.num_telefono = num_telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPorcentaje_pago() {
        return porcentaje_pago;
    }

    public void setPorcentaje_pago(String porcentaje_pago) {
        this.porcentaje_pago = porcentaje_pago;
    }

    public String getId_sistema_social_eps() {
        return id_sistema_social_eps;
    }

    public void setId_sistema_social_eps(String id_sistema_social_eps) {
        this.id_sistema_social_eps = id_sistema_social_eps;
    }

    public String getId_sistema_social_fondo_pension() {
        return id_sistema_social_fondo_pension;
    }

    public void setId_sistema_social_fondo_pension(String id_sistema_social_fondo_pension) {
        this.id_sistema_social_fondo_pension = id_sistema_social_fondo_pension;
    }

    public String getId_sistema_social_arl() {
        return id_sistema_social_arl;
    }

    public void setId_sistema_social_arl(String id_sistema_social_arl) {
        this.id_sistema_social_arl = id_sistema_social_arl;
    }

    @Override
    public String toString() {
        return "Empleado{" + "doc_empleado=" + doc_empleado + ", nombres=" + nombres + ", apellidos=" + apellidos + ", num_telefono=" + num_telefono + ", direccion=" + direccion + ", fecha_nacimiento=" + fecha_nacimiento + ", email=" + email + ", porcentaje_pago=" + porcentaje_pago + ", id_sistema_social_eps=" + id_sistema_social_eps + ", id_sistema_social_fondo_pension=" + id_sistema_social_fondo_pension + ", id_sistema_social_arl=" + id_sistema_social_arl + '}';
    }
    
    
    
}
