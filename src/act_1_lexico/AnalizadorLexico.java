/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package act_1_lexico;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

/*
ESTRADA RAMIREZ JESUS ISAAC
LENGUAJE PHP
*/

public class AnalizadorLexico {
    public static void main(String[] args) {
        System.out.println("ESTRADA RAMIREZ JESUS ISAAC \n");
         
         
        String test = "src/act_1_lexico/prueba.txt";

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
        
        
        System.out.println("ESTRADA RAMIREZ JESUS ISAAC");
    }

    
}