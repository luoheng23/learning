package design

type handler interface {
	setNext(handler)
	response(*people)
	handleMessage(*people)
}

type people struct {
	typ int
	req string
}

func newPeople(typ int, req string) *people {
	return &people{
		typ: typ,
		req: req,
	}
}

func (p *people) getType() int {
	return p.typ
}

func (p *people) getRequest() string {
	return p.req
}

type worker struct {
	level int
	next  handler
}

func newWorker(level int) *worker {
	return &worker{
		level: level,
		next:  nil,
	}
}
func (w *worker) setNext(h handler) {
	w.next = h
}

func (w *worker) response(p *people) {
	println(w.level, " read your request...")
	println(p.getRequest())
	println("It's all right.")
}

func (w *worker) handleMessage(p *people) {
	if p.getType() == w.level {
		w.response(p)
	} else if w.next != nil {
		w.next.handleMessage(p)
	} else {
		println("No body can handle your message")
		println(p.getRequest())
		println("It's not right.")
	}
}

func chain() {
	w1, w2, w3 := newWorker(1), newWorker(2), newWorker(3)
	w1.setNext(w2)
	w2.setNext(w3)
	p1, p2, p3 := newPeople(1, "I want to eat apple"), newPeople(2, "I want to eat peach"), newPeople(3, "I want to eat banana")
	p4 := newPeople(4, "Nobody likes me")
	w1.handleMessage(p1)
	w1.handleMessage(p2)
	w1.handleMessage(p3)
	w1.handleMessage(p4)
}
