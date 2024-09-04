/* The following code was generated by JFlex 1.6.1 */

/* 
VASQUEZ DENIZ ROBERTO
ESTRADA RAMIREZ JESUS ISAAC
PUENTES VEGA ANGEL DANIEL
CORTES UBALDO HAYDEE JOSSELYN
LENGUAJE PHP
*/

package act_3_error_lexico;

/*Aqui mas importaciones*/


/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.6.1
 * from the specification file <tt>src/act_3_error_lexico/lexico_php.flex</tt>
 */
public class LexerPalabrasReservadasPHP {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0, 0
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\33\1\11\1\13\1\13\1\11\22\0\1\33\1\24\1\10"+
    "\1\0\1\6\1\6\1\26\1\14\1\17\1\20\1\7\1\6\1\4"+
    "\1\6\1\3\1\25\12\1\1\6\1\6\1\31\1\23\1\31\1\0"+
    "\1\6\22\2\1\2\7\2\1\21\1\12\1\22\1\32\1\5\1\0"+
    "\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2"+
    "\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2\1\2"+
    "\1\2\1\2\1\2\1\2\1\2\1\2\1\15\1\27\1\16\7\0"+
    "\1\13\u05da\0\12\30\206\0\12\30\306\0\12\30\u019c\0\12\30\166\0"+
    "\12\30\166\0\12\30\166\0\12\30\166\0\12\30\166\0\12\30\166\0"+
    "\12\30\166\0\12\30\166\0\12\30\166\0\12\30\140\0\12\30\166\0"+
    "\12\30\106\0\12\30\u0116\0\12\30\106\0\12\30\u0746\0\12\30\46\0"+
    "\12\30\u012c\0\12\30\200\0\12\30\246\0\12\30\6\0\12\30\266\0"+
    "\12\30\126\0\12\30\206\0\12\30\6\0\12\30\u03ce\0\1\13\1\13"+
    "\u85f6\0\12\30\u02a6\0\12\30\46\0\12\30\306\0\12\30\26\0\12\30"+
    "\126\0\12\30\u0196\0\12\30\u5316\0\12\30\u0586\0\12\30\u0bbc\0\12\30"+
    "\200\0\12\30\74\0\12\30\220\0\12\30\u0116\0\12\30\u01d6\0\12\30"+
    "\u0176\0\12\30\146\0\12\30\u0216\0\12\30\u5176\0\12\30\346\0\12\30"+
    "\u6c74\0\62\30\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\u280f\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\0\1\1\1\2\1\3\1\4\1\5\1\2\1\6"+
    "\1\7\1\10\1\1\1\11\1\12\1\13\1\14\1\15"+
    "\1\16\5\2\1\17\1\2\1\17\1\20\1\0\1\20"+
    "\1\2\1\17\1\3\2\21\1\22\1\10\3\21\1\10"+
    "\1\23\1\24\1\2\1\25\1\26\1\27\1\10\1\30"+
    "\2\20\2\31\1\20\1\0\1\22\1\0\1\10\1\0"+
    "\1\21\1\0\1\10\1\0\1\32\1\10\1\0\2\2"+
    "\1\25\1\31\1\20\1\21\1\10\1\0\1\2\1\33"+
    "\1\22\1\33\11\10\1\34";

  private static int [] zzUnpackAction() {
    int [] result = new int[86];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\34\0\70\0\124\0\34\0\34\0\160\0\214"+
    "\0\250\0\34\0\304\0\34\0\34\0\34\0\34\0\34"+
    "\0\34\0\340\0\374\0\u0118\0\u0134\0\u0150\0\u016c\0\u0188"+
    "\0\u01a4\0\u01c0\0\u01dc\0\u01f8\0\u0214\0\u0230\0\u024c\0\u0268"+
    "\0\u0284\0\34\0\u02a0\0\u02bc\0\304\0\u02d8\0\u02f4\0\u0310"+
    "\0\34\0\u032c\0\u0348\0\34\0\34\0\u0364\0\34\0\u0380"+
    "\0\u039c\0\u03b8\0\u03d4\0\u03f0\0\u03d4\0\u040c\0\u0428\0\u0268"+
    "\0\u0284\0\u0444\0\u0460\0\304\0\u02d8\0\34\0\u047c\0\u0498"+
    "\0\u04b4\0\u04d0\0\u04ec\0\u0364\0\u0508\0\u0524\0\u0540\0\u055c"+
    "\0\u0578\0\u047c\0\u0594\0\u0498\0\u05b0\0\u05cc\0\u05e8\0\u0604"+
    "\0\u0620\0\u063c\0\u0658\0\u0674\0\u0690\0\34";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[86];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\2\1\3\1\4\1\5\1\6\1\4\2\7\1\10"+
    "\1\11\1\2\1\12\1\13\1\14\1\15\1\16\1\17"+
    "\1\20\1\21\1\22\1\23\1\24\1\25\1\26\1\27"+
    "\1\30\1\2\1\11\1\12\2\0\2\12\1\0\26\12"+
    "\1\0\1\31\1\32\1\33\1\34\1\35\1\0\1\35"+
    "\20\0\1\36\4\0\1\37\1\4\2\0\1\4\1\0"+
    "\1\35\24\0\1\12\1\0\1\35\2\12\1\35\1\12"+
    "\1\7\24\12\1\40\2\41\2\40\1\41\2\40\1\42"+
    "\1\12\1\43\4\40\1\44\14\40\1\12\2\0\2\12"+
    "\1\0\3\12\1\11\21\12\1\11\1\45\2\46\2\45"+
    "\1\46\3\45\1\12\1\47\1\45\1\42\17\45\1\12"+
    "\1\0\1\35\2\12\1\35\1\12\1\7\13\12\1\50"+
    "\11\12\1\0\1\35\2\12\1\35\1\12\1\7\13\12"+
    "\1\51\11\12\1\0\1\35\2\12\1\35\1\12\1\52"+
    "\15\12\1\53\7\12\1\0\1\35\2\12\1\35\1\12"+
    "\1\7\16\12\1\54\6\12\1\0\1\35\2\12\1\35"+
    "\1\12\1\7\17\12\1\55\5\12\1\36\1\0\1\56"+
    "\1\12\1\0\22\12\1\27\4\12\1\0\1\35\2\12"+
    "\1\35\1\12\1\7\13\12\1\57\10\12\1\0\1\31"+
    "\1\60\1\33\1\34\23\0\1\36\4\0\1\61\1\32"+
    "\2\0\1\35\1\0\1\35\25\0\1\62\26\0\1\63"+
    "\4\0\1\64\34\0\1\35\2\0\1\35\1\0\1\35"+
    "\25\0\1\36\1\0\1\65\24\0\1\36\4\0\2\37"+
    "\2\0\1\37\26\0\1\40\2\41\2\40\1\41\2\40"+
    "\1\42\1\12\1\43\21\40\10\41\1\66\1\0\1\67"+
    "\21\41\1\70\2\71\2\70\1\71\3\70\1\12\1\70"+
    "\1\12\20\70\1\40\2\41\2\40\1\41\2\40\1\42"+
    "\1\12\1\43\6\40\1\72\12\40\11\46\1\0\1\73"+
    "\1\46\1\66\17\46\1\74\2\75\2\74\1\75\3\74"+
    "\1\12\1\74\1\12\20\74\1\12\2\0\2\12\1\0"+
    "\15\12\1\76\10\12\1\77\1\100\1\101\2\77\1\101"+
    "\1\77\1\102\24\77\1\53\2\103\2\53\1\103\3\53"+
    "\1\12\1\53\1\12\20\53\1\12\1\63\1\0\2\12"+
    "\1\0\22\12\1\104\3\12\1\0\1\61\1\60\32\0"+
    "\1\61\33\0\1\62\1\0\2\105\23\0\1\63\4\0"+
    "\1\63\26\0\1\63\4\0\1\64\1\0\2\105\63\0"+
    "\11\71\1\0\1\71\1\0\20\71\1\40\2\41\2\40"+
    "\1\41\2\40\1\42\1\12\1\43\17\40\1\106\1\40"+
    "\11\75\1\0\1\75\1\0\20\75\1\77\2\100\2\77"+
    "\1\100\1\77\1\107\24\77\7\100\1\110\26\100\1\101"+
    "\2\100\1\101\1\100\1\111\24\100\1\77\1\100\1\101"+
    "\2\77\1\101\1\77\1\102\15\77\1\112\6\77\11\103"+
    "\1\0\1\103\1\0\20\103\1\0\1\61\1\0\2\105"+
    "\27\0\1\40\2\41\2\40\1\41\2\40\1\113\1\12"+
    "\1\43\21\40\1\77\2\100\2\77\1\100\1\77\1\107"+
    "\15\77\1\112\6\77\7\100\1\110\15\100\1\114\10\100"+
    "\1\101\2\100\1\101\1\100\1\111\15\100\1\114\6\100"+
    "\1\12\2\0\2\12\1\0\4\12\1\115\22\12\2\0"+
    "\2\12\1\0\4\12\1\116\22\12\2\0\2\12\1\0"+
    "\14\12\1\117\12\12\2\0\2\12\1\0\21\12\1\120"+
    "\5\12\2\0\2\12\1\0\4\12\1\121\22\12\2\0"+
    "\2\12\1\0\4\12\1\122\22\12\2\0\1\123\1\12"+
    "\1\0\27\12\2\0\2\12\1\0\12\12\1\124\14\12"+
    "\2\0\2\12\1\0\1\12\1\125\25\12\2\0\2\12"+
    "\1\0\2\12\1\126\23\12";

  private static int [] zzUnpackTrans() {
    int [] result = new int[1708];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unknown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\0\31\1\1\0\31\1\1\0\1\11\1\0\1\1"+
    "\1\0\1\1\1\0\1\1\1\0\2\1\1\0\7\1"+
    "\1\0\16\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[86];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;
  
  /** 
   * The number of occupied positions in zzBuffer beyond zzEndRead.
   * When a lead/high surrogate has been read from the input stream
   * into the final zzBuffer position, this will have a value of 1;
   * otherwise, it will have a value of 0.
   */
  private int zzFinalHighSurrogate = 0;


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public LexerPalabrasReservadasPHP(java.io.Reader in) {
    this.zzReader = in;
  }


  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x110000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 376) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length - zzFinalHighSurrogate) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzBuffer.length*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
    }

    /* fill the buffer with new input */
    int requested = zzBuffer.length - zzEndRead;
    int numRead = zzReader.read(zzBuffer, zzEndRead, requested);

    /* not supposed to occur according to specification of java.io.Reader */
    if (numRead == 0) {
      throw new java.io.IOException("Reader returned 0 characters. See JFlex examples for workaround.");
    }
    if (numRead > 0) {
      zzEndRead += numRead;
      /* If numRead == requested, we might have requested to few chars to
         encode a full Unicode character. We assume that a Reader would
         otherwise never return half characters. */
      if (numRead == requested) {
        if (Character.isHighSurrogate(zzBuffer[zzEndRead - 1])) {
          --zzEndRead;
          zzFinalHighSurrogate = 1;
        }
      }
      /* potentially more input available */
      return false;
    }

    /* numRead < 0 ==> end of stream */
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * Internal scan buffer is resized down to its initial length, if it has grown.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    zzFinalHighSurrogate = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
    if (zzBuffer.length > ZZ_BUFFERSIZE)
      zzBuffer = new char[ZZ_BUFFERSIZE];
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public int yylex() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      int zzCh;
      int zzCharCount;
      for (zzCurrentPosL = zzStartRead  ;
           zzCurrentPosL < zzMarkedPosL ;
           zzCurrentPosL += zzCharCount ) {
        zzCh = Character.codePointAt(zzBufferL, zzCurrentPosL, zzMarkedPosL);
        zzCharCount = Character.charCount(zzCh);
        switch (zzCh) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn += zzCharCount;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];

      // set up zzAction for empty match case:
      int zzAttributes = zzAttrL[zzState];
      if ( (zzAttributes & 1) == 1 ) {
        zzAction = zzState;
      }


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL) {
            zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
            zzCurrentPosL += Character.charCount(zzInput);
          }
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
              zzCurrentPosL += Character.charCount(zzInput);
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
        zzAtEOF = true;
        return YYEOF;
      }
      else {
        switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
          case 1: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> ERROR Token no reconocido");
            }
          case 29: break;
          case 2: 
            { System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println("Error: Identificador mal formado '" + yytext() + "'");
                return TokensPHP.ERROR_IDENTIFICADOR_MAL_FORMADO;
            }
          case 30: break;
          case 3: 
            { System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println(yytext() + " -> Identificador valido");
                return TokensPHP.IDENTIFICADOR_VALIDO;
            }
          case 31: break;
          case 4: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Punto ");                
                return TokensPHP.PUNTO;
            }
          case 32: break;
          case 5: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Coma ");                
                return TokensPHP.COMA;
            }
          case 33: break;
          case 6: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comillas dobles ");                
                return TokensPHP.COMILLAS_DOBLES;
            }
          case 34: break;
          case 7: 
            { /* Ignorar espacios en blanco */
            }
          case 35: break;
          case 8: 
            { System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\t"); 
                System.out.println(yytext() + " -> ERROR: Identificador mal formado"); 
                return TokensPHP.ERROR;
            }
          case 36: break;
          case 9: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de apertura ");                
                return TokensPHP.LLAVE_APERTURA;
            }
          case 37: break;
          case 10: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Llave de cierre ");                
                return TokensPHP.LLAVE_CIERRE;
            }
          case 38: break;
          case 11: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Parentesis de apertura ");                
                return TokensPHP.PARENTESIS_APERTURA;
            }
          case 39: break;
          case 12: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Parentesis de cierre ");                
                return TokensPHP.PARENTESIS_CIERRE;
            }
          case 40: break;
          case 13: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de apertura ");                
                return TokensPHP.CORCHETE_APERTURA;
            }
          case 41: break;
          case 14: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Corchete de cierre ");                
                return TokensPHP.CORCHETE_CIERRE;
            }
          case 42: break;
          case 15: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Numero entero ");                
                return TokensPHP.NUMERO_ENTERO;
            }
          case 43: break;
          case 16: 
            { System.out.print("Linea:" + (yyline + 1) + ", Columna:" + (yycolumn + 1) + "\\t");
                System.out.println(yytext() + " -> Error: Literal numérico incorrecto.");
                return TokensPHP.ERROR;
            }
          case 44: break;
          case 17: 
            { System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println("Error: Cadena de texto mal formada '" + yytext() + "'");
                return TokensPHP.ERROR_CADENA_MAL_FORMADA;
            }
          case 45: break;
          case 18: 
            { System.out.print("Linea:" + (yyline+1) + ", Columna:" + (yycolumn+1) + "\t");
                System.out.println(yytext() + " -> Cadena de texto");
                return TokensPHP.CADENA;
            }
          case 46: break;
          case 19: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de igualdad ");                
                return TokensPHP.OPERADOR_IGUALDAD;
            }
          case 47: break;
          case 20: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de desigualdad ");                
                return TokensPHP.OPERADOR_DESIGUALDAD;
            }
          case 48: break;
          case 21: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comentario de linea ");                
                return TokensPHP.COMENTARIO_LINEA;
            }
          case 49: break;
          case 22: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador logico AND ");                
                return TokensPHP.OPERADOR_LOGICO_AND;
            }
          case 50: break;
          case 23: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador logico OR ");                
                return TokensPHP.OPERADOR_LOGICO_OR;
            }
          case 51: break;
          case 24: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador relacional ");                
                return TokensPHP.OPERADOR_RELACIONAL;
            }
          case 52: break;
          case 25: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Numero en punto flotante ");                
                return TokensPHP.NUMERO_FLOTANTE;
            }
          case 53: break;
          case 26: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Operador de identidad ");                
                return TokensPHP.OPERADOR_IDENTIDAD;
            }
          case 54: break;
          case 27: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Comentario de bloque ");                
                return TokensPHP.COMENTARIO_BLOQUE;
            }
          case 55: break;
          case 28: 
            { System.out.print("Linea:"+(yyline+1)+", Columna:"+(yycolumn+1)+"\t");
                System.out.println(yytext()+" -> Cadena de texto ");                
                return TokensPHP.CADENA_TEXTO;
            }
          case 56: break;
          default:
            zzScanError(ZZ_NO_MATCH);
        }
      }
    }
  }

  /**
   * Runs the scanner on input files.
   *
   * This is a standalone scanner, it will print any unmatched
   * text to System.out unchanged.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java LexerPalabrasReservadasPHP [ --encoding <name> ] <inputfile(s)>");
    }
    else {
      int firstFilePos = 0;
      String encodingName = "UTF-8";
      if (argv[0].equals("--encoding")) {
        firstFilePos = 2;
        encodingName = argv[1];
        try {
          java.nio.charset.Charset.forName(encodingName); // Side-effect: is encodingName valid? 
        } catch (Exception e) {
          System.out.println("Invalid encoding '" + encodingName + "'");
          return;
        }
      }
      for (int i = firstFilePos; i < argv.length; i++) {
        LexerPalabrasReservadasPHP scanner = null;
        try {
          java.io.FileInputStream stream = new java.io.FileInputStream(argv[i]);
          java.io.Reader reader = new java.io.InputStreamReader(stream, encodingName);
          scanner = new LexerPalabrasReservadasPHP(reader);
          while ( !scanner.zzAtEOF ) scanner.yylex();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
      }
    }
  }


}