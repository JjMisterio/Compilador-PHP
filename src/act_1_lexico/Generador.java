/*
ESTRADA RAMIREZ JESUS ISAAC
LENGUAJE PHP
*/

package act_1_lexico;

import jflex.Main;

public class Generador {
    public static void main(String[] args) {
        // Define las rutas del archivo JFlex y el directorio de salida
        String jflex = "src/act_1_lexico/lexico_php.flex";

        // Configura los argumentos para JFlex
        String[] jflexArgs = { jflex };

        try {
            // Llama al método main de JFlex.Main para generar el lexer
            Main.generate(jflexArgs);
            System.out.println("Lexer generado con éxito " );
        } catch (Exception e) {
            System.err.println("Error al generar el lexer.");
            e.printStackTrace();
            System.exit(1);
        }
    }
}