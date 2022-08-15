//
//  MiniApp.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation
import UIKit

@objc public protocol MiniApp: AnyObject {
    /// App id
    @objc var appId: String { get set }
    /// Delegate for connecting with super app
    @objc var delegate: MiniappDelegate? { get set }
    
    @objc init(appId: String, superAppId: String, permissions: [MiniAppPermissionScope.RawValue])
    
    /// Super app's id
    @objc var superAppId: String { get set }
    
    /// First view of the app.
    @objc var rootViewController: UIViewController? { get }
    
    /// The way super app opens mini app
    @objc func show(presentationType: MiniAppPresentationType, root: UIViewController)
    
    /// Dismiss the mini app
    @objc func dismiss(completion: (() -> Void)?)
    
    /// Send custom event to super app
    @objc func dispatch(_ action: MiniAppAction)
}
