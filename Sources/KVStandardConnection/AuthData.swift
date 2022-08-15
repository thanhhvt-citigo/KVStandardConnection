//
//  AuthData.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation

@objc public protocol MiniAppAuthData : AnyObject {
    var token: String { get set}
    var retailerId: Int { get set }
    var branchId: Int { get set }
}
