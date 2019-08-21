var text = "testing: 1, 2, 3";
var pattern = /\d+/g
console.log(pattern.test(text));
console.log(text.search(pattern));
console.log(text.match(pattern));
console.log(text.replace(pattern, "#"));
console.log(text.split(/\D+/));