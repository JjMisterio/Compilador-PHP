/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package act_9_semantico;

import java.util.HashMap;
import java.util.Map;

/*
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

public class TablaSimbolos {
    private Map<String, Simbolo> tabla;
    
    public TablaSimbolos() {
        tabla = new HashMap<>();
    }
    
    public boolean agregar(String nombre, Simbolo simbolo) {
        if (tabla.containsKey(nombre)){
            return false;
        }
        else {
            tabla.put(nombre, simbolo);
            return true;
        }
    }
    
    public boolean verificar(String nombre) {
        return tabla.containsKey(nombre);
    }
    
    public Simbolo obtenerSimbolo(String nombre) {
        return tabla.get(nombre);
    }
    
    public boolean modificar(String nombre, Simbolo nuevoSimbolo) {
        if (tabla.containsKey(nombre)) {
            tabla.put(nombre, nuevoSimbolo);
            return true;
        }
        return false;
    }
    
    public String mostrar() {
        String simbolos = "";
        for(Simbolo value : tabla.values()){
            simbolos += value;
        }
        return null;
    }
}
