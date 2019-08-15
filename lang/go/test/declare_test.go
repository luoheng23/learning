package main

import (
	"fmt"
	"testing"
)

// var s = struct{}
var s, t = 0, 1
type Cel float64
type C Cel
func TestS(t *testing.T) {
	fmt.Println(s, t)
}
