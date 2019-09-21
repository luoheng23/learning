package design

// visitor pattern is to divide complex work to a seperate class
type data struct {
	name string
	number int
}

func newData(name string, number int) *data {
	return &data{
		name: name,
		number: number,
	}
}

func (d *data) getName() string {
	return d.name
}

func (d *data) getNum() int{
	return d.number
}

func (d *data) setName(name string) {
	d.name = name
}

func (d *data) setNum(number int) {
	d.number = number
}

type visitor int

func (v visitor) multiNames(d *data) (names []string){
	names = make([]string, d.getNum())
	length := len(names)
	for i := 0; i < length; i++ {
		names[i] = d.getName()
	}
	return
}