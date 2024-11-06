/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package act_7_clases;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java_cup.runtime.Symbol;
import java_cup.sym;

/*
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

public class AnalizadorSintactico {
    public static void main(String[] args) throws IOException {
        Reader lector = new BufferedReader(new FileReader("src/act_7_clases/pruebaSintactico.txt"));
        LexerPHP lexer = new LexerPHP(lector);
        ParserPHP parser = new ParserPHP(lexer);
        
        try {
            System.out.println("VASQUEZ DENIZ ROBERTO \nESTRADA RAMIREZ JESUS ISAAC \nPUENTES VEGA ANGEL DANIEL \nCORTES UBALDO HAYDEE JOSSELYN \n");
            System.out.println(parser.parse());
            System.out.println("Analisis realizado correctamente");
        } catch (Exception ex) {
            System.out.println("Error durante el analisis \n" + ex.getMessage());
            ex.printStackTrace(); // Esto imprimirá la traza completa del error
        }
    }
}
