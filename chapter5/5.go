package main

import (
	"fmt"
	"math"
)

func hypot(x, y float64) float64 {
	return math.Sqrt(x*x + y*y)
}

func hypotUse() {
	fmt.Println(hypot(3, 4))
}

func main() {
	// hypotUse()
}
