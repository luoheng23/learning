package design

import (
	"testing"
)

func TestSingleton(t *testing.T) {
	a := getResource(13)
	b := getResource(14)
	if a.w != 13 || b.w != 13 {
		t.Errorf("TestSingleton failed.")
	}
}