package main

import (
	"fmt"
	"testing"
)

func TestArray(t *testing.T) {
	a := [3]int{1, 2, 3}
	fmt.Println(a)
	a = [3]int{}
	fmt.Println(a)
}
