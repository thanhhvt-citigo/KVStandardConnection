//
//  MiniAppDelegate.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation

@objc public protocol MiniappDelegate : AnyObject {
    /// Handle custom event from mini app
    /// - Parameter appId: The app id of the mini app
    /// - Parameter params: The event data
    /// - Returns: The mini app if existed, otherwise nil
    @objc optional func received(action: MiniAppAction)
    /// Handle mini app's didFinishLaunching event
    /// - Parameter appId: The app id of the mini app
    @objc optional func didFinishLaunch(appId: String)
    /// Handle mini app's willTerminate event
    /// - Parameter appId: The app id of the mini app
    @objc optional func willTerminate(appId: String)
    /// Handle mini app's error. Used for tracking purpose.
    /// - Parameter appId: The app id of the mini app
    /// - Parameter error: The error from mini app
    /// - Parameter params: The error's data
    @objc optional func onError(_: MiniAppError)
}
