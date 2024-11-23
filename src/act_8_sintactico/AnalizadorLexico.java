/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package act_8_sintactico;

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

public class AnalizadorLexico {
    public static void main(String[] args) throws IOException {
        try {
            System.out.println("VASQUEZ DENIZ ROBERTO \nESTRADA RAMIREZ JESUS ISAAC \nPUENTES VEGA ANGEL DANIEL \nCORTES UBALDO HAYDEE JOSSELYN \n");
            Reader lector = new BufferedReader(new FileReader("src/act_8_sintactico/pruebaLexico.txt"));
            LexerPHP lexico = new LexerPHP(lector);
            String resultado = "";
            while (true) {
                Symbol token = lexico.next_token();
                if (token.sym == sym.EOF) {
                    resultado = "FIN";
                    System.out.println(resultado);
                    break;
                }
            }
        } catch (FileNotFoundException ex) {
            
        } catch (IOException ex) {
            
        }
    }
}
