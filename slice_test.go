package main

import (
	"fmt"
	"testing"
)
func TestSlice(t *testing.T) {
	s := make([]int, 1, 8)
	fmt.Println(s)
	fmt.Println(s[0])
	fmt.Println(s[:5])
	fmt.Println(s[5])
}