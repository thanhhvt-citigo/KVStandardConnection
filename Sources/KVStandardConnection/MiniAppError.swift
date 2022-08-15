//
//  MiniAppError.swift
//  StandardConnection
//
//  Created by thanh tien on 15/08/2022.
//

import Foundation

@objc public enum MiniAppErrorType: Int {
   case other = 0
}

@objc public class MiniAppError : NSError {
    var appId: String = ""
    var errorType: MiniAppErrorType = .other
    
    public init(appId: String, type: MiniAppErrorType, userInfo dict: [String : Any]? = nil) {
        self.appId = appId
        self.errorType = type
        super.init(domain: appId, code: 0, userInfo: dict)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
