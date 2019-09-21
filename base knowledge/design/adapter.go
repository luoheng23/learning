package design

type system1 struct {
	name string
}

func (s system1) getName() string {
	return s.name
}

type system2 struct {
	name string
}

func (s system2) getN() string {
	return s.name
}

// Pass system2 to the adapter, then you can work on system2 just like on system1
// As a result, you don't need to change much of your code and work with system2
type adapter struct {
	system2
}

func (a adapter) getName() string {
	return a.getN()
}
