package design

import "errors"

type iterator interface {
	hasNext() bool
	next() int
}

type bowl struct {
	cur int
	array []int
}

var bow bowl

func init()  {
	bow.cur = 0
	bow.array = []int{1, 2, 3}
}

var errEnd = errors.New("The iterator has reached the end.")

func (b *bowl) NewIterator() {
	b.cur = 0
}

func (b *bowl) hasNext() bool {
	return b.cur < len(b.array)
}

func (b *bowl) next() (int, error){
	if b.hasNext() {
		b.cur++
		return b.array[b.cur-1], nil
	}
	return 0, errEnd
}