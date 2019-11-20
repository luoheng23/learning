
var errorCodeString: String?
errorCodeString = "404"
if errorCodeString != nil {
    let theError = errorCodeString!
    print(theError)
}

if let temp = errorCodeString {
    print(temp)
} else {
    print("nil")
}

var errorString: String?
errorString = "404"
print(errorString ?? "nil")
errorString?.append(" PLEASE TRY AGAIN.")
print(errorString ?? "nil")
