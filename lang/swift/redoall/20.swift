
enum Token {
    case number(Int)
    case plus
}

class Lexer {
    let input: String.CharacterView
    var position: String.CharacterView.Index

    init(input:String) {
        self.input = input.characters
        self.position = input.characters.Index
    }

    func peek() -> Character? {
        guard position < input.endindex else {
            return nil
        }
        return input[position]
    }

    func advance() {
        position = input.Index(after: position)
    }
}

