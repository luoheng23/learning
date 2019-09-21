package design

import "testing"

func TestFacade(t *testing.T) {
	var u user
	var nu newUser
	u.work()
	nu.work()
}
