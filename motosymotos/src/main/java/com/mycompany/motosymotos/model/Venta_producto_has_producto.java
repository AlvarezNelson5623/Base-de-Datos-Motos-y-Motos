/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.model;

/**
 *
 * @author Nelson Alvarez
 */
public class Venta_producto_has_producto {
    private int id_venta_producto;
    private int id_producto;
    private int cantidad_prodcuto;

    public Venta_producto_has_producto(int id_venta_producto, int id_producto, int cantidad_prodcuto) {
        this.id_venta_producto = id_venta_producto;
        this.id_producto = id_producto;
        this.cantidad_prodcuto = cantidad_prodcuto;
    }

    public Venta_producto_has_producto() {
    }

    public int getId_venta_producto() {
        return id_venta_producto;
    }

    public void setId_venta_producto(int id_venta_producto) {
        this.id_venta_producto = id_venta_producto;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getCantidad_prodcuto() {
        return cantidad_prodcuto;
    }

    public void setCantidad_prodcuto(int cantidad_prodcuto) {
        this.cantidad_prodcuto = cantidad_prodcuto;
    }

    @Override
    public String toString() {
        return "Venta_producto_has_producto{" + "id_venta_producto=" + id_venta_producto + ", id_producto=" + id_producto + ", cantidad_prodcuto=" + cantidad_prodcuto + '}';
    }
    
    
       
}
