package main

import "fmt"

func main() {
	var array = [5]int{1, 2, 3, 4, 5}
	var slice []int
	slice = array[:2]
	newSlice := slice[:5]
	slice = append(slice, 1)
	fmt.Println(slice, array, newSlice)
}
