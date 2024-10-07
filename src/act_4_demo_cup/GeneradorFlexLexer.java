/*
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_4_demo_cup;

import java.io.File;
import java.io.IOException;

public class GeneradorFlexLexer {
    public static void main(String[] args) throws IOException, Exception {
        //Este codigo es para que el flex genere la clase java lexer
        String pathFlex ="src/act_4_demo_cup/lexico_php.flex";
        File file = new File(pathFlex);
        jflex.Main.generate(file);
        String[] parametrosLex = {pathFlex};
        jflex.Main.generate(parametrosLex);
    }
}
