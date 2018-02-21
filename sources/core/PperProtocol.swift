//
//  PperProtocol.swift
//  pper
//
//  Created by Dzimtry Navak on 2/20/18.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation

public typealias PperCompletion = (PermissionStatus) -> ()

public protocol PperProtocol: class {
    /**
     This is the key method to know if a permission has been authorized or denied.
     
     Parameter completion: this closure is invoked with the current permission status
     */
    func status(completion: @escaping PperCompletion)
    
    /**
     This is the key method to manage the request for a permission.
     
     Parameter completion: this closure is invoked with the current permission status
     */
    func manage(completion: @escaping PperCompletion)
    func askForPermission(completion: @escaping PperCompletion)
}
