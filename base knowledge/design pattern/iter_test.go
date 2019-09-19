package design

import "testing"

func TestIterator(t *testing.T) {
	bow.NewIterator()
	a, x := bow.next()
	b, y := bow.next()
	c, z := bow.next()
	d, w := bow.next()
	if a != 1 || b != 2 || c != 3 || d != 0 || x != nil || y != nil || z != nil || w == nil {
		t.Errorf("TestIterator failed.")
	}
}
