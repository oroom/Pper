import Foundation
//import AddressBook
//import AVFoundation
//import Photos
//import EventKit
//import CoreBluetooth
//import CoreMotion
//import CloudKit
//import Accounts
//import UserNotifications

/**
*  Protocol for permission configurations.
*/
@objc public protocol Permission {
    /// Permission type
    var type: PermissionType { get }
}

public typealias requestPermissionUnknownResult = () -> Void
public typealias requestPermissionShowAlert     = (PermissionType) -> Void

//@objc public class NotificationsPermission: NSObject, Permission {
//    public let type: PermissionType = .notifications
//    public let notificationCategories: Set<UNNotificationCategory>?
//
//    public init(notificationCategories: Set<UNNotificationCategory>? = nil) {
//        self.notificationCategories = notificationCategories
//    }
//}
//
//@objc public class ContactsPermission: NSObject, Permission {
//    public let type: PermissionType = .contacts
//}
//
//@objc public class EventsPermission: NSObject, Permission {
//    public let type = PermissionType.events
//}
//
//@objc public class MicrophonePermission: NSObject, Permission {
//    public let type = PermissionType.microphone
//}
//
//@objc public class PhotosPermission: NSObject, Permission {
//    public let type = PermissionType.photos
//}
//
//@objc public class RemindersPermission: NSObject, Permission {
//    public let type = PermissionType.reminders
//}
//
//@objc public class BluetoothPermission: NSObject, Permission {
//    public let type = PermissionType.bluetooth
//}
//
//@objc public class MotionPermission: NSObject, Permission {
//    public let type = PermissionType.motion
//}

