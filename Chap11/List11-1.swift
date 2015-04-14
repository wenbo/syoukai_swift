extension String {
    var length: Int {
        return countElements(self) // インスタンス自体はselfで表す
    }
}

println("小惑星1999RQ36".length)
