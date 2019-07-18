package main

import "testing"

func TestDivide(t *testing.T) {
	if 5 % 2 != 1 || 5 / 2 != 2 || (5.0 / 2 - 2.5) >= 0.1 {
		t.Error("divide failed.")
	}
}
