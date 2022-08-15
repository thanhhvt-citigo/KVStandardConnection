//
//  SuperApp.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation

@objc public protocol SuperApp : AnyObject {
    /// Get mini app with specific app id
    /// - Parameter appId: The app id of the mini app
    /// - Returns: The mini app if existed, otherwise nil
    @objc optional func getMiniapp(appId: String) -> MiniApp?
    /// Show the mini app with specific app id
    /// - Parameter appId: The app id of the mini app
    @objc optional func showMiniApp(appId: String)
    /// Dismiss mini with specific app id
    /// - Parameter appId: The app id of the mini app
    @objc optional func destroy(appId: String)
    
    @objc var appId: String { get }
}
