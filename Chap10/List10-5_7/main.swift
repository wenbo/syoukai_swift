let she = Person(name:"小咲", sex:.Female, birth:Date(6,15))
var teller: Foretellable = Monthology(person:she)
println( teller.predict("今日の運勢") )
