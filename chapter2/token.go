package chapter2

// Token represent token
type Token int

// tokens
const (
	// type
	typeStart Token = iota
	INT
	FLOAT
	STRING
	typeEnd

	// operator
	operatorStart
	PLUS
	MINUS
	TIMES
	DIV
	AND
	OR
	NOT
	EQUAL
	NOTEQUAL
	SMALLTHAN
	BIGTHAN
	SMALLEQUAL
	BIGEQUAL
	operatorEnd

	// other
	otherStart
	DEFINE
	ASSIGN
	COMMA
	COLON
	LBRACK
	RBRACK
	LSBRACK
	RSBRACK
	LBRACE
	RBRACE
	DOT
	otherEnd

	IDENTIFIER
	NUMBER

	keywordStart
	WHILE
	FOR
	TO
	BREAK
	LET
	IN
	END
	FUNCTION
	VAR
	TYPE
	ARRAY
	IF
	THEN
	ELSE
	DO
	OF
	NIL
	keywordEnd

	EOF
)

var tokens = map[string]Token{
	"INT":        INT,
	"FLOAT":      FLOAT,
	"STRING":     STRING,
	"PLUS":       PLUS,
	"MINUS":      MINUS,
	"TIMES":      TIMES,
	"DIV":        DIV,
	"AND":        AND,
	"OR":         OR,
	"EQUAL":      EQUAL,
	"NOTEQUAL":   NOTEQUAL,
	"SMALLTHAN":  SMALLTHAN,
	"BIGTHAN":    BIGTHAN,
	"SMALLEQUAL": SMALLEQUAL,
	"BIGEQUAL":   BIGEQUAL,
	"ASSIGN":     ASSIGN,
	"COMMA":      COMMA,
	"COLON":      COLON,
	"LBRACK":     LBRACK,
	"RBRACK":     RBRACK,
	"LSBRACK":    LSBRACK,
	"RSBRACK":    RSBRACK,
	"LBRACE":     LBRACE,
	"RBRACE":     RBRACE,
	"DOT":        DOT,
	"IDENTIFIER": IDENTIFIER,
	"DEFINE":     DEFINE,
	"NOT":        NOT,
	"NUMBER":     NUMBER,
	"WHILE":      WHILE,
	"FOR":        FOR,
	"TO":         TO,
	"BREAK":      BREAK,
	"LET":        LET,
	"IN":         IN,
	"END":        END,
	"FUNCTION":   FUNCTION,
	"VAR":        VAR,
	"TYPE":       TYPE,
	"ARRAY":      ARRAY,
	"IF":         IF,
	"THEN":       THEN,
	"ELSE":       ELSE,
	"DO":         DO,
	"OF":         OF,
	"NIL":        NIL,
}
