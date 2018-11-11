package main

import "fmt"

func hello() {
	fmt.Println("hello, that's good enough for everyone, but I want to have that in that case.")
}

func nonempty(strings []string) []string {
	i := 0
	for _, s := range strings {
		if s != "" {
			strings[i] = s
			i++
		}
	}
	return strings[:i]
}
func main() {
	fmt.Println("hello, world!")
	hello()
}
