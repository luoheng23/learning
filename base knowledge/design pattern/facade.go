package design

func step1() {
	println("step1...")
}
func step2() {
	println("step2...")
}
func step3() {
	println("step3...")
}
func step4() {
	println("step4...")
}

type user int

func (u user) work() {
	step1()
	step2()
	step3()
	step4()
}

// facade pattern
// seperate work flow from user
// work flow is only managed by work class
type newUser struct {
	w work
}

type work int

func (w work) work() {
	step1()
	step2()
	step3()
	step4()
}

func (nu newUser) work() {
	nu.w.work()
}