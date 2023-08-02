//
//  YLToolsManager.swift
//  YogaLife
//
//  Created by 龚梦洋 on 2023/8/2.
//

import Foundation
import UIKit

class YLToolsManager: NSObject {
    
    static func getWindows() -> [UIWindow] {
        var windows: [UIWindow] = []
        if #available(iOS 15.0, *) {
            windows = UIApplication.shared.connectedScenes.flatMap({ ($0 as? UIWindowScene)?.windows ?? []
            })
        } else {
            windows = UIApplication.shared.windows
        }
        return windows
    }
    
    static func getKeyWiondow() -> UIWindow? {
        return YLToolsManager.getWindows().filter { window in
            return window.isKeyWindow
        }.first
    }
}
