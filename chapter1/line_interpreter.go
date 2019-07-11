/*
Grammar:

Stm -> Stm; Stm (CompoundStm)
Stm -> id := Exp (AssignStm)
Stm -> print(Explist) (PrintStm)
Exp -> id (IdExp)
Exp -> num (NumExp)
Exp -> Exp Binop Exp (OpExp)
Exp -> (Stm, Exp) (EseqExp)

ExpList -> Exp, Explist (PairExpList)
ExpList -> Exp (lastExpList)
Binop -> + (Plus)
Binop -> - (Minus)
Binop -> x (Times)
Binop -> / (Div)


Stm AStm
Exp AExp
ExpList AExpList
id string
num int
*/
package chapter1

const (
	ACompoundStm = iota
	AAssignStm
	APrintStm
)

type compound struct {
	stm1, stm2 *AStm
}

type assign struct {
	id  string
	exp *AExp
}

type print struct {
	exps *AExpList
}

type AStm struct {
	kind int
	compound
	assign
	print
}

func acStm(stm1, stm2 *AStm) *AStm {
	as := AStm{}
	as.kind = ACompoundStm
	as.stm1, as.stm2 = stm1, stm2
	return &as
}

func aaStm(id string, exp *AExp) *AStm {
	aa := AStm{}
	aa.kind = AAssignStm
	aa.id, aa.exp = id, exp
	return &aa
}

func apStm(exps *AExpList) *AStm {
	ap := AStm{}
	ap.kind = APrintStm
	ap.exps = exps
	return &ap
}

const (
	AIdExp = iota
	ANumExp
	AOpExp
	AEsqExp
)

const (
	APlus = iota
	AMinus
	ATimes
	ADiv
)

type op struct {
	left  *AExp
	oper  int
	right *AExp
}

type eseq struct {
	stm *AStm
	exp *AExp
}

type AExp struct {
	kind int
	id   string
	num  int
	op
	eseq
}

const (
	APairExpList = iota
	ALastExpList
)

type pair struct {
	head *AExp
	tail *AExpList
}

type AExpList struct {
	kind int
	pair
	last *AExp
}

func alList(last *AExp) *AExpList {
	al := AExpList{}
	al.kind = ALastExpList
	al.last = last
	return &al
}

func apList(head *AExp, tail *AExpList) *AExpList {
	ap := AExpList{}
	ap.kind = APairExpList
	ap.head, ap.tail = head, tail
	return &ap
}

func aiExp(id string) *AExp {
	ai := AExp{}
	ai.kind = AIdExp
	ai.id = id
	return &ai
}

func anExp(num int) *AExp {
	an := AExp{}
	an.kind = ANumExp
	an.num = num
	return &an
}

func aoExp(left *AExp, oper int, right *AExp) *AExp {
	ao := AExp{}
	ao.kind = AOpExp
	ao.left, ao.oper, ao.right = left, oper, right
	return &ao
}

func aeExp(stm *AStm, exp *AExp) *AExp {
	ae := AExp{}
	ae.kind = AEsqExp
	ae.stm, ae.exp = stm, exp
	return &ae
}

var prog = acStm(aaStm("a", aoExp(anExp(5), APlus, anExp(3))),
	acStm(aaStm("b",
		aeExp(apStm(
			apList(aiExp("a"),
				alList(aoExp(aiExp("a"), AMinus, anExp(1))))),
			aoExp(anExp(10), ATimes, aiExp("a")))), apStm(alList(aiExp("b")))))
