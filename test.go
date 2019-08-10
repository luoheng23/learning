package main

import (
	"bytes"
	"fmt"
	"time"
)

type IntValue int
type defined interface {
}

func main() {
	t1 := time.Now()
	var string bytes.Buffer
	string.WriteString("hello ")
	string.WriteString("World")
	fmt.Println(string.String())
	t2 := time.Now()
	fmt.Println(t2.Sub(t1))

	var s IntValue
	ss := defined(s)
	switch ss.(type) {
	case int:
		fmt.Println("s's type is int")
	case IntValue:
		fmt.Println("s' type is IntValue")
	}
}
