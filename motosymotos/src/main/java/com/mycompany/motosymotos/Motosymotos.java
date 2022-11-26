/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.mycompany.motosymotos;

import com.mycompany.motosymotos.controller.Conexion;
import com.mycompany.motosymotos.controller.Controller_screen;

/**
 *
 * @author Nelson Alvarez
 */
public class Motosymotos {

    public static void main(String[] args) {
        Conexion.conectar();
        Controller_screen.abrir_pantalla();
    }
}
