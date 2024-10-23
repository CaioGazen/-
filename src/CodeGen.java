import java.io.BufferedWriter;
import java.io.FileWriter;

public class CodeGen {
  public void gravarArquivo(String cod) {
    try {
      FileWriter fstream = new FileWriter("codigo_gerado.txt", true);
      BufferedWriter out = new BufferedWriter(fstream);
      out.write(cod);
      out.close();
    } catch (Exception e) {
      System.err.println("Erro ao gravar arquivo: " +
          e.getMessage());
    }
  }

  public void printf(Object texto) {
    String str1 = texto.toString();
    str1 = str1.replace("\"", "");
    str1 = str1.concat("\\0");
    gravarArquivo("\n.intel_syntax noprefix\r\n" +
        "\r\n" +
        ".extern _printf\r\n" +
        ".global _printf2\r\n" +
        "\r\n" +
        "_texto: .ascii \"" + str1 + "\"\r\n" +
        "\r\n" +
        "_printf2:\r\n" +
        "    push ebp\r\n" +
        "    mov ebp, esp\r\n" +
        "\r\n" +
        "    push OFFSET _texto\r\n" +
        "    call _printf\r\n" +
        "    add esp, 4\r\n" +
        "\r\n" +
        "    pop ebp\r\n" +
        "    ret\r\n");
  }

  public void declaracaoVariavel(Object identificadorVariavel, Object tipoVariavel) {
    String nomeVar = identificadorVariavel.toString();
    String tipoVar = tipoVariavel.toString();
    if ((tipoVar.equals("number") || tipoVar.equals("char"))) {
      gravarArquivo("\n@DATA" + "\r\n" + nomeVar + " DB 0\r\n");
    }
    if (tipoVar.equals("number number")) {
      gravarArquivo("\n@DATA" + "\r\n" + nomeVar + " DW 0\r\n");
    }
  }

  public void scanf(Object identificadorVariavel) {
    String nomeVar = identificadorVariavel.toString();
    gravarArquivo("\nint 21h" + "\r\nmov @DATA[" + nomeVar + "], eax\r\n");
  }

}
