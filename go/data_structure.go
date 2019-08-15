package main

import "fmt"

func array() {
	var a [3]int
	fmt.Println(a)
	fmt.Println(a[0])
	fmt.Println(a[len(a)-1])
	for i, v := range a {
		fmt.Printf("%d %d\n", i, v)
	}
	a = [...]int{1, 2, 3}
	b := [...]int{99: -1}
	fmt.Println(b)
}

func zero(ptr *[32]byte) {
	*ptr = [32]byte{}
}

func slice() {
	months := [...]string{1: "January" /* ... */, 12: "December"}
	fmt.Println(months)
}

func reverse(s []int) {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
}

func reverseTest() {
	a := [...]int{0, 1, 2, 3, 4, 5}
	reverse(a[:])
	fmt.Println(a)
}

type Point struct {
	X, Y int
}

type Circle struct {
	Point
	redius float64
}

type Wheel struct {
	Circle
	Spokes int
}

func main() {
	// array()
	// slice()
	reverseTest()
}
