package main

import (
	"testing"
	"fmt"
	"time"
)

// Employee ok
type Employee struct {
    ID int
    Name string
    Address string
    DoB time.Time
    Position string
    Salary int
    ManagerID int
}

// TestStruct ok
func TestStruct(t *testing.T) {
	var dilbert Employee
	dilbert.Salary -= 5000
	fmt.Println(dilbert)
}