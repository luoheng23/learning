package chapter2

import (
	"io"
	"log"
	"os"
	"fmt"
)

// Scanner generate tokens from source file
type Scanner struct {
	File   string
	Reader io.Reader
	Pos    int
	Buffer []byte
	Len    int
	IsRead bool

	Lit string
	tok Token
	CurPos int
}

// Init return a Scanner related to a source file
func Init(file string) Scanner {
	s := Scanner{File: file}
	Reader, err := os.Open(file)
	if err != nil {
		log.Fatal(err)
	}
	s.Reader = Reader
	s.Len = 4000
	s.Buffer = make([]byte, s.Len)
	s.read()
	s.IsRead = true
	return s
}

func (s *Scanner) read() {
	_, err := s.Reader.Read(s.Buffer)
	if err != nil {
		log.Fatal(err)
	}
	s.Pos = 0
}

func (s *Scanner) getr() byte {
	s.Pos++
	return s.Buffer[s.Pos-1]
}

func (s *Scanner) ungetr() {
	s.Pos--
}


func (s *Scanner) next() {
	c := s.getr()
	// skip whitespace
	for c == ' ' || c == '\t' || c == '\n' || c == '\r' {
		c = s.getr()
	}
	if isLetter(c) {
		s.ident()
	} else if isNumber(c) {
		s.number()
	} else {
		switch c {
		case '"':
			s.string()
		case '(':
			s.tok = LBRACK
		case ')':
			s.tok = RBRACK
		case '[':
			s.tok = LSBRACK
		case ']':
			s.tok = RSBRACK
		case '{':
			s.tok = LBRACE
		case '}':
			s.tok = RBRACE
		case '.':
			s.tok = DOT
		case ':':
			if s.getr() == '=' {
				s.tok = DEFINE
			} else {
				s.ungetr()
				s.tok = COLON
			}
		case '+':
			s.tok = PLUS
		case '-':
			s.tok = MINUS
		case '*':
			s.tok = TIMES
		case '/':
			s.tok = DIV
		case '&':
			s.tok = AND
		case '|':
			s.tok = OR
		case '<':
			if s.getr() == '=' {
				s.tok = SMALLEQUAL
			} else {
				s.ungetr()
				s.tok = SMALLTHAN
			}
		case '>':
			if s.getr() == '=' {
				s.tok = BIGEQUAL
			} else {
				s.ungetr()
				s.tok = BIGTHAN
			}
		case '=':
			if s.getr() == '=' {
				s.tok = EQUAL
			} else {
				s.ungetr()
				s.tok = ASSIGN
			}
		case '!':
			if s.getr() == '=' {
				s.tok = NOTEQUAL
			} else {
				s.ungetr()
				s.tok = NOT
			}
		default:
			s.tok = EOF
			fmt.Errorf("invalid character %#U", c)
		}
}

}

func (s *Scanner) start() {
	s.Lit = ""
	s.tok = 0
	s.CurPos = s.Pos-1
}

func (s *Scanner) ident() {
	s.start()
	c := s.getr()
	for isLetter(c) || isNumber(c) {
		c = s.getr()
	}
	s.Lit, s.tok = string(s.Buffer[s.CurPos:s.Pos-1]), IDENTIFIER
	s.ungetr()
}

func (s *Scanner) number() {
	s.start()
	c := s.getr()
	for isNumber(c) {
		c = s.getr()
	}
	if c == '.' {
		c = s.getr()
		for isNumber(c) {
			c = s.getr()
		}
	}
	s.Lit, s.tok = string(s.Buffer[s.CurPos:s.Pos]), NUMBER
}

func (s *Scanner) string() {
	c := s.getr()
	s.start()
	for c != '"'{
		c = s.getr()
	}
	s.Lit, s.tok = string(s.Buffer[s.CurPos:s.Pos-1]), STRING
}

func isLetter(c byte) bool {
	return 'a' <= c && c <= 'z' || 'A' <= c && c <= 'Z'
}

func isNumber(c byte) bool {
	return '0' <= c && '9' >= c
}

func isIdentifier(c byte) bool {
	return isLetter(c) && isNumber(c)
}

func (s *Scanner) Scan() (lit string, tok Token){
	s.next()
	if s.tok == EOF {
		return "", EOF
	}
	return s.Lit, s.tok
}
