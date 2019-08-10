package main

import "fmt"

type notifier interface {
	notify()
}

type user struct {
	name  string
	email string
}

func (u *user) notify() {
	fmt.Printf("Sending user email to %s <%s>\n",
		u.name, u.email)
}

func (u *admin) notify() {
	fmt.Printf("Sending admin email to %s <%s>\n",
		u.name, u.email)
}

type admin struct {
	user
	level string
}

func main() {
	ad := admin{
		user: user{
			name:  "john smith",
			email: "john@yahoo.com",
		},
		level: "super",
	}

	ad.user.notify()

	ad.notify()
	sendNotification(&ad)
}

func sendNotification(n notifier) {
	n.notify()
}
