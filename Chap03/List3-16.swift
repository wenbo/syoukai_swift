enum Week : Int {
    case 日曜, 月曜, 火曜, 水曜, 木曜, 金曜, 土曜
}

struct TimeTable {
    var tab: [[String]] = [
        [ "国語", "算数", "体育", "国語" ],
        [ "国語", "算数", "生活", "国語", "音楽" ],
        [ "生活", "体育", "国語", "算数", "学活" ],
        [ "道徳", "生活", "国語", "図書", "音楽" ],
        [ "図工", "図工", "体育", "国語", "算数" ],
    ]
    subscript(曜日:Week) -> [String] {
        switch 曜日 {
            case .日曜, .土曜: return []
            default: return tab[曜日.rawValue - 1]
        }
    }
    subscript(曜日:Week, var 時間:Int) -> String {
        let arr = self[曜日]
        時間--
        return 時間 < arr.count ? arr[時間] : ""
    }
}

let tt = TimeTable()
println(tt[.月曜])
println(tt[.月曜,5])
println(tt[.火曜,2])
