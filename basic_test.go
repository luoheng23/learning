package main

import (
	"fmt"
	"testing"
)

func TestBasic(t *testing.T) {
	const (
		a = iota
		b
		c
		d = 4
		e = iota
	)
	fmt.Println(a, b, c, d, e)
}