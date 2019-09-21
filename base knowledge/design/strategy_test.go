package design

import "testing"

func TestStrategy(t *testing.T) {
	var d dog
	var c chicken
	var b bird
	Context(d)
	Context(c)
	Context(b)
}