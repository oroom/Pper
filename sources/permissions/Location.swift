//
//  Location.swift
//  pper
//
//  Created by Dzimtry Navak on 2/20/18.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation
import CoreLocation

@objc public class LocationWhileInUsePermission: NSObject, Permission {
    public let type: PermissionType = .locationInUse
}

@objc public class LocationAlwaysPermission: NSObject, Permission {
    public let type: PermissionType = .locationAlways
}

