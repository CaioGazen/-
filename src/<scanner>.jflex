import java_cup.runtime.Symbol;

%%
%class scanner

%unicode
%cup
%line
%column


%{
  private static String zzToPrintable(CharSequence cs) {
    return zzToPrintable(cs.toString());
  }
  private Symbol symbol(int type) {
  return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
  return new Symbol(type, yyline, yycolumn, value);
  }
%}

WhiteSpace = [ \t\f\r\n]
Number = [-|+]?[:digit:]+ | [-|+]?[:digit:]+[\.][:digit:]* | [-|+]?\.[:digit:]+
String = [^\t\f\r\n " +"]+ | \"[^(\\n|\\r)]~\"


%%
<YYINITIAL> {
  "+"                         { return symbol(sym.ADD);     }
  "-"                         { return symbol(sym.SUB);     }
  "*"                         { return symbol(sym.MTP);     }
  "/"                         { return symbol(sym.DIV);     }
  "%"                         { return symbol(sym.MOD);     }
  [(]                         { return symbol(sym.LP);      }
  [)]                         { return symbol(sym.RP);      }
  ";"                         { return symbol(sym.SEMI);    }
  "{"                         { return symbol(sym.LB);      }
  "}"                         { return symbol(sym.RB);      }
  "=="                        { return symbol(sym.EQ);      }
  "!="                        { return symbol(sym.NEQ);     }
  "<"                         { return symbol(sym.LT);      }
  "<="                        { return symbol(sym.LTE);     }
  ">="                        { return symbol(sym.GTE);     }
  ">"                         { return symbol(sym.GT);      }
  "iff"                       { return symbol(sym.IFF);     }
  "printf"                    { return symbol(sym.PRNT);    }
  "for"                       { return symbol(sym.FOR);     }
  "while"                     { return symbol(sym.WHILE);   }
  "else"                      { return symbol(sym.ELSE);    }
  "scanf"                     { return symbol(sym.SCAN);    }
  [!]+                        { return symbol(sym.EOL);     }
  [?]+                        { return symbol(sym.EOLD);    } 
  {Number}                    { return symbol(sym.NUMBER, Double.valueOf(yytext())); }
  {WhiteSpace}                { }
  {String}                    { return symbol(sym.STRING, new String(yytext()));  }
  . { return symbol(sym.error, yytext()); }
}
