package design

// Strategy represent strategy pattern
type Strategy interface {
	shout()
}

type dog int
type chicken int
type bird int

func (d dog) shout() {
	println("wang wang...")
}

func (c chicken) shout() {
	println("luo luo...")
}

func (b bird) shout() {
	println("jo jo...")
}

// Context contains all strategies
func Context(s Strategy) {
	s.shout()
}
