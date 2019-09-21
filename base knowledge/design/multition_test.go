package design

import "testing"

func TestMultition(t *testing.T) {
	b := getR(-2)
	c := getR(1)
	d := getR(2)
	e := getR(3)
	if b != -1 || c != 1 || d != 1 || e != -1 {
		t.Errorf("TestMultition failed. Expected (-1, 1, 1, -1), Got (%d, %d, %d, %d)", b, c, d, e)
	}
}
