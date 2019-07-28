import Cocoa

var errorCodeString: String?
errorCodeString = "404"
if errorCodeString != nil {
    let theError = errorCodeString!
    print(theError)
}
if let theError = errorCodeString {
    print(theError)
}
print(errorCodeString ?? "hello world")

