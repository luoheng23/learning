
var statusCode: Int = 404
var errorString: String

switch statusCode {
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not found"
default:
    errorString = "None"
}
print(errorString)

let first = 404
let second = 200
let errorCodes = (first, second)

switch errorCodes {
case (404, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}

let age = 23
if case 18...35 = age, age > 18, age < 30 {
    print("Cool demographic")
}