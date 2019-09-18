package design

import "sync"

var resource [3]int

var monce sync.Once

func getR(i int) int {
	if i < 0 || i >= 3 {
		return -1
	}
	monce.Do(func() {
		for j := 0; j < len(resource); j++ {
			resource[j] = 1
		}
	})
	return resource[i]
}
