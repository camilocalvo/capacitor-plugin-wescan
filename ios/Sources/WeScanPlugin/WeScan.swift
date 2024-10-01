import Foundation

@objc public class WeScan: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
