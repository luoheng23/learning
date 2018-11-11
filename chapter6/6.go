package main

import (
	"fmt"
	"math"
)

// Point is good
type Point struct{ X, Y float64 }

// Distance is good
func Distance(p, q Point) float64 {
	return math.Hypot(q.X-p.X, q.Y-p.Y)
}

// Distance is good
func (p Point) Distance(q Point) float64 {
	return math.Hypot(q.X-p.X, q.Y-p.Y)
}

func geo() {
	p := Point{1, 2}
	q := Point{4, 6}
	fmt.Println(Distance(p, q))
	fmt.Println(q.Distance(p))
}

func main() {
	geo()
}
