package design

import "testing"

func TestProxy(t *testing.T) {
	var act actress
	var w wang
	proxy := actProxy{proxy: act}
	w = 1
	act.makeFriend(w)
	act.play(w)
	proxy.makeFriend(w)
	proxy.play(w)
	w = 10
	act.makeFriend(w)
	act.play(w)
	proxy.makeFriend(w)
	proxy.play(w)
}