package chapter2

// Token
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
	EQUAL
	NOTEQUAL
	SMALLTHAN
	BIGTHAN
	SMALLEQUAL
	BIGEQUAL
	operatorEnd

	// other
	otherStart
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
)

