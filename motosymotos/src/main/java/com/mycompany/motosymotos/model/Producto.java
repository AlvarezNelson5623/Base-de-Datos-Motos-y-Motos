/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.model;

/**
 *
 * @author Nelson Alvarez
 */
public class Producto {
    private int id_producto;
    private String nombre;
    private String marca;
    private double precio_venta;
    private double precio_compra;
    private int existencias_disponibles;
    private int inventario_minimo;
    private String ubicacion_bodega;

    public Producto( String nombre, String marca, double precio_venta, double precio_compra, int existencias_disponibles, int inventario_minimo, String ubicacion_bodega) {
        this.nombre = nombre;
        this.marca = marca;
        this.precio_venta = precio_venta;
        this.precio_compra = precio_compra;
        this.existencias_disponibles = existencias_disponibles;
        this.inventario_minimo = inventario_minimo;
        this.ubicacion_bodega = ubicacion_bodega;
    }

    public Producto(int id_producto, String nombre, String marca, double precio_venta, double precio_compra, int existencias_disponibles, int inventario_minimo, String ubicacion_bodega) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.marca = marca;
        this.precio_venta = precio_venta;
        this.precio_compra = precio_compra;
        this.existencias_disponibles = existencias_disponibles;
        this.inventario_minimo = inventario_minimo;
        this.ubicacion_bodega = ubicacion_bodega;
    }
    
    
    
    public int getId_producto() {
        return id_producto;
    }
    
    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public int getExistencias_disponibles() {
        return existencias_disponibles;
    }

    public void setExistencias_disponibles(int existencias_disponibles) {
        this.existencias_disponibles = existencias_disponibles;
    }

    public int getInventario_minimo() {
        return inventario_minimo;
    }

    public void setInventario_minimo(int inventario_minimo) {
        this.inventario_minimo = inventario_minimo;
    }

    public String getUbicacion_bodega() {
        return ubicacion_bodega;
    }

    public void setUbicacion_bodega(String ubicacion_bodega) {
        this.ubicacion_bodega = ubicacion_bodega;
    }

    @Override
    public String toString() {
        return "Producto{" + "id_producto="  + ", nombre=" + nombre + ", marca=" + marca + ", precio_venta=" + precio_venta + ", precio_compra=" + precio_compra + ", existencias_disponibles=" + existencias_disponibles + ", inventario_minimo=" + inventario_minimo + ", ubicacion_bodega=" + ubicacion_bodega + '}';
    }
    
    
}
