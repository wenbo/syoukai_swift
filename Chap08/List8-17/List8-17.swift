class USBCamera {
    private var focus = 2.0
    private var shutterSpeed = 1.0 / 1000.0
    private func take() { /* 写真を撮る */
        println("take a picture")
    }
}

class WebCamera : USBCamera {
    internal override var focus: Double {
        didSet {
            super.shutterSpeed = ss(super.focus)
        }
    }
    internal private(set) override var shutterSpeed: Double {
        get { return super.shutterSpeed }
        set { super.shutterSpeed = newValue }
    }
    override init() { super.init() }
    override func take() { super.take() }
    private func ss(f:Double) -> Double {
        return (f * f) / 4000.0
    }
}
