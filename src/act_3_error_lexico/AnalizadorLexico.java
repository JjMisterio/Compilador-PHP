/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package act_3_error_lexico;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

/*
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

public class AnalizadorLexico {
    public static void main(String[] args) {
        System.out.println("VASQUEZ DENIZ ROBERTO \nESTRADA RAMIREZ JESUS ISAAC \nPUENTES VEGA ANGEL DANIEL \nCORTES UBALDO HAYDEE JOSSELYN \n");
         
         
        String test = "src/act_3_error_lexico/prueba.txt";

        try (Reader reader = new FileReader(test)) {
            // Crear la instancia del lexer directamente
            LexerPalabrasReservadasPHP lexer = new LexerPalabrasReservadasPHP(reader);

            // Leer tokens y procesarlos
            int token;
            while ((token = lexer.yylex()) != -1) {
                System.out.println("Token: " + token);
                System.out.println("");
            }
        } catch (IOException e) {
            System.err.println("Error al leer el archivo de prueba.");
            e.printStackTrace();
        }
        
        
        System.out.println("VASQUEZ DENIZ ROBERTO \nESTRADA RAMIREZ JESUS ISAAC \nPUENTES VEGA ANGEL DANIEL \nCORTES UBALDO HAYDEE JOSSELYN \n");
    }

    
}