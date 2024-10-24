import java.util.*;

public class SymbolTable {
  private Hashtable<Object, Object> tabela = new Hashtable<Object, Object>();

  public String getTipo(Object identificador) {
    String id = new String();
    if (identificador.toString().equals("number") || identificador.toString().equals("char")
        || identificador.toString().equals("number number")
        || identificador.toString().equals("char char")) {
      id = identificador.toString();
    } else if (identificador.toString().matches("[0-9]+\\.0")) {
      id = "number";

    } else if (identificador.toString().matches("[0-9]+\\.?[0-9]?")) {
      id = "number number";

    } else if (tabela.get(identificador) == null) {
      System.out.println("Erro: identificador '" + identificador + "' nao existe.");
      id = "";

    } else {
      id = tabela.get(identificador).toString();

    }
    return id;
  }

  public void inserirSimbolo(Object identificador, Object tipo) {
    if (tabela.get(identificador) != null) {
      System.out.println("Erro: identificador '" + identificador + "' ja existe.");
      return;
    }

    if (tipo.equals("number") || tipo.equals("char") || tipo.equals("number number") || tipo.equals("char char")) {
      tabela.put(identificador, tipo);
    } else {
      System.out.println("Erro: tipo '" + tipo + "' nao existe.");
    }
  }

}
