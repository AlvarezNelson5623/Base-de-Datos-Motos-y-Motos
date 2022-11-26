/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.motosymotos.controller;

import com.mycompany.motosymotos.view.MainScreen;

/**
 *
 * @author Nelson Alvarez
 */
public class Controller_screen {

    private static MainScreen pantalla_principal;

    public static void abrir_pantalla() {
        if (pantalla_principal == null) {
            pantalla_principal = new MainScreen();
        }
        //pantalla_principal = new MainScreen();
        pantalla_principal.setVisible(true);
        pantalla_principal.setLocationRelativeTo(null);
    }

    public static void cerrar_pantalla() {
        pantalla_principal.setVisible(false);
        pantalla_principal = null;
    }
}
