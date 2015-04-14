struct Date {
    var year, month, day: Int
    init() {
       year = 2095; month = 10; day = 31
    } // self.year = 2095 のように書くこともできる
}

var m = Date()      // 生成とともにイニシャライザが動作する
println(m.year)     // 2095が出力される
