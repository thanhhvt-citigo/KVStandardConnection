//
//  MiniAppAction.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation

@objc public protocol MiniAppAction: AnyObject  {
    var appId: String { get set }
    var name: String { get set}
    var params: [String : Any] { get set }
}
