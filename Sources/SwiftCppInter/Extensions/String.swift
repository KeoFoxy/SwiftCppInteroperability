import Foundation

extension String {
    func toStdString() -> std.string {
        return std.string(self)
    }
}

extension std.string {
    func toString() -> String {
        return String(describing: self)
    }
}
