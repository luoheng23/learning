package main

import "fmt"

func main() {
	var slice []int
	var m map[string]int = map[string]int{}
	slice = append(slice, 2)
	fmt.Println(slice)
	m["hello"] = 10
	fmt.Println(m)
}
