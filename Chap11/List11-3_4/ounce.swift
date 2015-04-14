struct Ounce {
    var mL:Double = 0.0                 // 値はミリリットルで保持
    static let ounceUS = 29.5735    // 1オンス（米国）
    init(ounce:Double) {
        self.ounce = ounce          // 計算型プロパティを使って初期化
    }
    var ounce: Double {             // 計算型プロパティの定義
        get { return mL / Ounce.ounceUS }
        set { mL = newValue * Ounce.ounceUS }
    }
}
