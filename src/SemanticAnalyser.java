import java.util.*;

public class SemanticAnalyser {
  public boolean verificarAtribuicao(Object identificador, Object valor, Object tipoIdentificador) {
    boolean error = false;
    if (valor.toString().equals("number") || valor.toString().equals("char")
        || valor.toString().equals("number number")
        || valor.toString().equals("char char")) {
      return error;
    } else if (tipoIdentificador.equals("number") && !(valor.toString().matches("[0-9]+\\.0"))) {
      System.out.println("Erro: Variavel '" + identificador + "' eh do tipo number");
      error = true;
    } else if ((tipoIdentificador.equals("number number") || tipoIdentificador.equals("number"))
        && !(valor.toString().matches("[0-9]+\\.?[0-9]?"))) {
      System.out.println("Erro: Variavel '" + identificador + "' deve ter um valor numerico");
      error = true;
    } else if (tipoIdentificador.equals("char") && valor.toString().length() > 3) {
      System.out.println("Erro: Variavel '" + identificador + "' eh do tipo char");
      error = true;
    }
    return error;
  }

  public boolean verificarTipos(Object tipo1, Object tipo2) {
    boolean error = false;

    if (tipo1 != tipo2) {
      System.out.println("Erro: Tipos incompativeis");
      error = true;
    }

    return error;
  }
}
