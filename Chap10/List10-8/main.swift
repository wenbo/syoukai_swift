var teller: Foretellable
let oda = Person(name:"織田信長", sex:.Male, birth:Date(5,12,year:1534))
teller = Monthology(person:oda)
println( teller.predict("今日の運勢") )
teller = NamaeUranai(person:oda)
println( teller.predict("天下統一") )
println( teller.predict("本能寺") )
