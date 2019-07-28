import Cocoa

var statusCode = 404

var errorString: String = "The request failed with the error: "

//switch statusCode {
//case 400:
//    errorString = "Bad Request"
//case 401:
//    errorString = "Unauthorized"
//case 403:
//    errorString = "Forbidden"
//case 404:
//    errorString = "Not found"
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request"
//default:
//    errorString = "None"
//}

switch statusCode {
case 100, 101:
    errorString += "Informational, 1xx."
case 204:
    errorString += "Successful but no content, 204."
case 300...307:
    errorString += "Redirection, 3xx."
case 400...417:
    errorString += "Client error, 4xx."
case 500...505:
    errorString += "Server error, 5xx."
// value binding
case let unKnowCode where unKnowCode >= 200 && unKnowCode < 300 || unKnowCode > 505:
    errorString = "\(unKnowCode) is not a known error code."
default:
    errorString = "Unknown. Please review the request and try again."
}

let error = (statusCode, errorString)
let errors = (code: statusCode, error: errorString)
let e = (0, 2, 4, "hello world")

switch errors {
case (404, "Client error, 4xx"):
    print("No items found.")
default:
    print("All items found.")
}

var age = 35

if case 18...35 = age {
    print("Cool demographic")
}

print(error, errors)
