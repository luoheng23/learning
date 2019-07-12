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
		if tok == -1 {
			break
		}
		fmt.Printf("lit: %s, tok: %d\n", lit, tok)
	}
}