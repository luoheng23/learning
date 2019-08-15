package main

import "fmt"

var x, y int
fmt.Println(&x == &x, &x == &y, &x == nil)

var p = f()
func f() *int {
	v := 1
	return &v
}
fmt.Println(f() == f())

func incr(p *int) int {
	*p++
	return *p
}

v := 1
incr(&v)
fmt.Println(incr(&v))

func main() {
	fmt.Println("hello, world!")
}
