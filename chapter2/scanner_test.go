package chapter2

import (
	"fmt"
	"testing"
)

// test for scanner
func TestScanner(t *testing.T) {
	s := Init("test_for_scanner.go")
	for {
		lit, tok := s.Scan()
		if tok == EOF {
			break
		}
		fmt.Printf("lit: %s, tok: %s\n", lit, tokens[tok])
	}
}
