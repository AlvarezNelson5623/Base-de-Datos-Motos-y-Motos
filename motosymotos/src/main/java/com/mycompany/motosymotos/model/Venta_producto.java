/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.model;

/**
 *
 * @author Nelson Alvarez
 */
public class Venta_producto {
    private int id_venta_producto;
    private int doc_empleado;
    private int id_cliente;
    private String fecha_venta;
    private double valor_venta;

    public Venta_producto(int id_venta_producto, int doc_empleado, int id_cliente, String fecha_venta, double valor_venta) {
        this.id_venta_producto = id_venta_producto;
        this.doc_empleado = doc_empleado;
        this.id_cliente = id_cliente;
        this.fecha_venta = fecha_venta;
        this.valor_venta = valor_venta;
    }

    public Venta_producto(int doc_empleado, int id_cliente, String fecha_venta, double valor_venta) {
        this.doc_empleado = doc_empleado;
        this.id_cliente = id_cliente;
        this.fecha_venta = fecha_venta;
        this.valor_venta = valor_venta;
    }

    public int getId_venta_producto() {
        return id_venta_producto;
    }

    public void setId_venta_producto(int id_venta_producto) {
        this.id_venta_producto = id_venta_producto;
    }

    public int getDoc_empleado() {
        return doc_empleado;
    }

    public void setDoc_empleado(int doc_empleado) {
        this.doc_empleado = doc_empleado;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(String fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public double getValor_venta() {
        return valor_venta;
    }

    public void setValor_venta(double valor_venta) {
        this.valor_venta = valor_venta;
    }

    @Override
    public String toString() {
        return "Venta_producto{" + "id_venta_producto=" + id_venta_producto + ", doc_empleado=" + doc_empleado + ", id_cliente=" + id_cliente + ", fecha_venta=" + fecha_venta + ", valor_venta=" + valor_venta + '}';
    }
    
    
}
