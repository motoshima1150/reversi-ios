public enum Disk {
    case dark
    case light
}

extension Disk: Hashable {}

extension Disk {
    /// `Disk` のすべての値を列挙した `Array` 、 `[.dark, .light]` を返します。
    public static var sides: [Disk] {
        [.dark, .light]
    }
    
    /// 自身の値を反転させた値（ `.dark` なら `.light` 、 `.light` なら `.dark` ）を返します。
    public var flipped: Disk {
        switch self {
        case .dark: return .light
        case .light: return .dark
        }
    }
    
    /// 自身の値を、現在の値が `.dark` なら `.light` に、 `.light` なら `.dark` に反転させます。
    public mutating func flip() {
        self = flipped
    }
}


extension Optional where Wrapped == Disk {
    init?<S: StringProtocol>(symbol: S) {
        switch symbol {
        case "x":
            self = .some(.dark)
        case "o":
            self = .some(.light)
        case "-":
            self = .none
        default:
            return nil
        }
    }
    
    var symbol: String {
        switch self {
        case .some(.dark):
            return "x"
        case .some(.light):
            return "o"
        case .none:
            return "-"
        }
    }
}
