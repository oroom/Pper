//
//  PperUIItem.swift
//  pper
//
//  Created by Dzimtry Navak on 2/21/18.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation
import UIKit

public protocol UIItem: class {
    /// Color used for permission buttons with authorized status
    var authorizedButtonColor: UIColor { get }
    /// Color used for permission buttons with unauthorized status. By default, inverse of `authorizedButtonColor`.
    var unauthorizedButtonColor: UIColor? { get }
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents)
    func setStatus(_ status: PermissionStatus)
    func setText(_ text: String)
}

extension UIButton: UIItem {
    public var authorizedButtonColor: UIColor { return UIColor(red: 0, green: 0.47, blue: 1, alpha: 1) }
    public var unauthorizedButtonColor: UIColor? { return nil }
    
    public func setStatus(_ status: PermissionStatus) {
        switch status {
        case .authorized:
            setButtonAuthorizedStyle(self)
        case .unauthorized, .unknown, .disabled:
            setButtonUnauthorizedStyle(self)
        }
    }
    
    public func setText(_ text: String) {
        self.setTitle(text, for: .normal)
    }
    
    /**
     Sets the style for permission buttons with authorized status.
     
     - parameter button: Permission button
     */
    private func setButtonAuthorizedStyle(_ button: UIButton) {
        button.layer.borderWidth = 0
        button.backgroundColor = authorizedButtonColor
        button.setTitleColor(.white, for: .normal)
    }
    
    /**
     Sets the style for permission buttons with unauthorized status.
     
     - parameter button: Permission button
     */
    private func setButtonUnauthorizedStyle(_ button: UIButton) {
        button.layer.borderWidth = 0
        button.backgroundColor = unauthorizedButtonColor ?? authorizedButtonColor.inverseColor
        button.setTitleColor(.white, for: .normal)
    }
}
