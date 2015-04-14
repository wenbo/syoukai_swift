class Person {
    let name:String
    var age:Int
    init(name:String, age:Int) {
        self.name = name; self.age = age
    }
    func description() -> String {
        return "\(name), \(age)"
    }
    deinit {
        println("\(name): deinit")
    }
}

func temp(entry:[String:Person]) {
    var list = [[String:Person]]()
    list.append(entry)
    println("\(list.count)個のエントリ")
}
temp( ["Natsuki": Person(name:"夏希", age:18)] )
