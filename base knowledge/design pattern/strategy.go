package design

// Strategy represent strategy pattern
type Strategy interface {
	shout()
}

type dog int
type chicken int
type bird int

func (d dog) shout() {
	print("wang wang...\n")
}

func (c chicken) shout() {
	print("luo luo...\n")
}

func (b bird) shout() {
	print("jo jo...\n")
}

// Context contains all strategies
func Context(s Strategy) {
	s.shout()
}
