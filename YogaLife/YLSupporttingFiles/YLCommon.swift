//
//  YLCommon.swift
//  YogaLife
//
//  Created by 龚梦洋 on 2023/8/2.
//

import Foundation
import UIKit

let ylScreenWidth = UIScreen.main.bounds.width
let ylScreenHeight = UIScreen.main.bounds.height

/* Bounds */
let IS_IPHONESE =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 640, height: 1136).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE6S =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 750, height: 1334).equalTo((UIScreen.main.currentMode?.size)!) : false)

let IS_IPHONE6S_PLUS =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1242, height: 2208).equalTo((UIScreen.main.currentMode?.size)!) : false)

/// iPhoneX
let IS_IPHONE_X_XS =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1125, height: 2436).equalTo((UIScreen.main.currentMode?.size)!) : false)

//判断iPhoneXr
let IS_IPHONE_XR =  (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 828, height: 1792).equalTo((UIScreen.main.currentMode?.size)!) : false)

//判断iPhoneXsMax
let ISIPHONEXS_MAX = (UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? CGSize(width: 1242, height: 2688).equalTo((UIScreen.main.currentMode?.size)!) : false)

//判断iPhoneX所有系列
let ISIPHONEX_All = IS_IPHONE_X_XS || IS_IPHONE_XR || ISIPHONEXS_MAX

@available(iOS 11.0, *)
let IS_IPHONEX = (YLToolsManager.getWindows().first?.safeAreaInsets.bottom ?? 0) > 0

let IS_IPAD = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad


@available(iOS 11.0, *)
let kStatusBarHeight: CGFloat = (IS_IPHONEX ? 44 : 20)

//导航栏的高度
let kNavigationBarHeight: CGFloat = kStatusBarHeight + 44 + 20

//底部安全区域
let kBottomSafeHeight: CGFloat = (IS_IPHONEX ? 34 : 0)

//顶部安全区域
let kTopSafeHeight: CGFloat = (IS_IPHONEX ? 24 : 0)

//
let kTabbarHeight: CGFloat = (IS_IPHONEX ? (49 + kBottomSafeHeight) : 49)

func kColor(r: Int, g: Int, b: Int, _ a: Double = 1.0) -> UIColor {
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
}

//按钮背景色
let buttonBgColor = kColor(r: 255, g: 158, b: 203)

//记录详情弹窗&今日心得背景颜色
let recordBgColor = kColor(r: 245, g: 208, b: 208)







