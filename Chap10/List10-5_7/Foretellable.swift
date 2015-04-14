protocol Foretellable {
    init(person:Person)
    mutating func predict(subject:String) -> String
}
