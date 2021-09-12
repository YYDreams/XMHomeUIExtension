//
//  XMHomeUI_Extension.swift
//  XMHomeUIExtension
//
//  Created by flowerflower on 2021/9/2.
//

import Foundation
import XMMediator


public extension XEMediator {
    

    @objc func XMHomeUI_homeViewController() -> UIViewController? {
        if let controller = self.performTarget_XMHomeUI(action: "homeViewController", param: nil) {
            return controller
        }
        return nil
    }

    
}


/// Private
extension XEMediator {
    
    
    /// 账号模块通用调用方法
    ///
    /// - Parameters:
    ///   - action: 方法
    ///   - param: 参数
    ///   - shouldCacheTarget: 是否缓存 Target
    func performTarget_XMHomeUI(action: String,
                                   param: Dictionary<AnyHashable, Any>? = nil,
                                   shouldCacheTarget: Bool? = false) -> UIViewController? {
        let targetName = "XMHomeUI"
        var paramDic: Dictionary<AnyHashable, Any> = param ?? [:]
        paramDic[kXEMediatorParamsKeySwiftTargetModuleName] = targetName
        if let controller = self.performTarget(targetName,
                                               action: action,
                                               params: paramDic,
                                               shouldCacheTarget: false) as? UIViewController {
            return controller
        }
        return nil
    }
    
}


