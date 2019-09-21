package design

import "testing"

func TestVisitor(t *testing.T) {
	d := newData("work work", 4)
	answer := [4]string{"work work", "work work", "work work", "work work"}
	var v visitor
	result := [4]string{}
	copy(result[:], v.multiNames(d))
	if answer != result {
		t.Errorf("TestVisitor failed. Expected %v, Got %v.", answer, result)
	}
}