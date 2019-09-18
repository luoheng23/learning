package design


type friend interface {
	makeFriend(int)
	play(int)
}

type wang int
type actress int
type actProxy struct {
	proxy actress
}

func (act actress) makeFriend(w wang) {
	println("I wish to be your friend", w)
}

func (act actress) play(w wang) {
	println("Les't play together!", w)
}

func (actP actProxy) makeFriend(w wang) {
	if 0 < w && w < 9 {
		actP.proxy.makeFriend(w)
	} else {
		println("Sorry, you can't see my actress!")
	}
}

func (actP actProxy) play(w wang) {
	if 0 < w && w < 9 {
		actP.proxy.play(w)
	} else {
		println("Sorry, you can't see my actress!")
	}
}