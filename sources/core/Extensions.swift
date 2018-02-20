import Foundation
import UIKit

extension UIColor {
    /// Returns the inverse color
    var inverseColor: UIColor{
        var r:CGFloat = 0.0; var g:CGFloat = 0.0; var b:CGFloat = 0.0; var a:CGFloat = 0.0;
        if self.getRed(&r, green: &g, blue: &b, alpha: &a) {
            return UIColor(red: 1.0-r, green: 1.0 - g, blue: 1.0 - b, alpha: a)
        }
        return self
    }
}

extension String {
    /// NSLocalizedString shorthand
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

extension CGRect {
    public mutating func offsetInPlace(dx: CGFloat, dy: CGFloat) {
        self = offsetBy(dx: dx, dy: dy)
    }
}
