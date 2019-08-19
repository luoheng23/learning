package main

import (
	"fmt"
	"image/color"
	"math"
)

// Point is good
type Point struct{ X, Y float64 }

// ColoredPoint is good
type ColoredPoint struct {
	Point
	Color color.RGBA
}

func colorPoint() {
	red := color.RGBA{255, 0, 0, 255}
	blue := color.RGBA{0, 0, 255, 255}
	var cp ColoredPoint
	cp.X = 1
	var p = ColoredPoint{Point{1, 1}, red}
	var q = ColoredPoint{Point{5, 4}, blue}
	fmt.Println(p.Distance(q.Point))
}

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

func testLink() {
	print(&[3]int{})
}

func main() {
	// geo()
	// testLink()
	colorPoint()
}
