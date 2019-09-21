package design

import "testing"

func TestAdapter(t *testing.T) {
	var s1 = system1{"system1"}
	println(s1.getName())
	var s2 = system2{"system2"}
	println(s2.getN())
	var s3 = adapter{s2}
	println(s3.getName())
}
