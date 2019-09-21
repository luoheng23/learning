package design

import (
	"sync"
)

var once sync.Once

type preciousResource struct {
	w int
}

var s *preciousResource

func getResource(num int) *preciousResource {
	once.Do(func() {
		s = &preciousResource{w:num}
	})
	return s
}
