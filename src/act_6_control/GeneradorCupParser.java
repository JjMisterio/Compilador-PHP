/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package act_6_control;

import java.io.IOException;

/*
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

public class GeneradorCupParser {
    public static void main(String[] args) throws IOException, Exception {
        //Este es para que el cup genere la clase parser y el sym
        String[] parametros = {
            "-destdir", "src/act_6_control",
            "-parser" , "ParserPHP",
            "-progress", "src/act_6_control/PHP.cup"
        };
        java_cup.Main.main(parametros);
    }
}
