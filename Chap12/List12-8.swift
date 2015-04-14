class TaxiFare {
   let firstMeters, flagDown: Int   // 初乗りの距離と運賃
   let upMeters, upCharge: Int      // それ以降の距離と運賃
   lazy var daytime: Int->Int = self.meter(false)   // 通常運賃
   lazy var nighttime: Int->Int = self.meter(true)  // 夜間運賃
   init(first:(m:Int, Int), after:(m:Int, Int)) {
       (firstMeters, flagDown) = first   // タプルを２組与える
       (upMeters, upCharge) = after
   }
   deinit { println("deinit: TaxiFare") }

    func meter(midnight:Bool) -> (Int -> Int) {
       weak var wself: TaxiFare! = self     // 弱い参照の変数にselfを代入
       return { (var distance:Int) in
          if (midnight) {
              distance = Int(Double(distance) * 1.2)
          }
          var fare = wself.flagDown     // selfではなくwselfを使う
          distance -= wself.firstMeters
          if (distance > 0) {
              fare += (distance / wself.upMeters + 1) * wself.upCharge
          }
          return fare
       }
    }
}

do {
   var tokyo = TaxiFare(first:(m:2000, 730), after:(m:280, 90))
   var osaka = TaxiFare(first:(m:2000, 680), after:(m:266, 80))
   var kyoto = TaxiFare(first:(m:1700, 620), after:(m:276, 80))
   let mett = tokyo.daytime
   let metk = kyoto.daytime
   println("\t東京\t京都")
   for var d = 1000; d <= 5000; d += 1000 {
       println("\(d):\t\(mett(d))\t\(metk(d))")
   }
}while false
