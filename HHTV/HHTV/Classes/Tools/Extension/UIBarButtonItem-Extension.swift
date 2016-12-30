//
//  UIBarButtonItem-Extension.swift
//  HHTV
//
//  Created by HeHui on 2016/12/30.
//  Copyright © 2016年 Hawie. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    // 类方法创建
    class func createItem(imgName:String,hlImgName:String,size:CGSize) -> UIBarButtonItem{
        let btn = UIButton()
        btn.setImage(UIImage(named:imgName), for: .normal)
        btn.setImage(UIImage(named:hlImgName), for: .highlighted)
        btn.frame = CGRect(origin: .zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
    
    // 便利构造函数 1.convenience开头 2.必须明确调用一个设计的构造函数
    convenience init(imgName:String,hlImgName:String = "",size:CGSize = .zero,suffix:String = "") {
        let btn = UIButton()
        btn.setImage(UIImage(named:imgName), for: .normal)
        if hlImgName != "" {
             btn.setImage(UIImage(named:hlImgName), for: .highlighted)
        }else{
            if suffix != "" {
                let hlstr = imgName.appending(suffix);
                if let hlimg = UIImage(named:hlstr) {
                    btn.setImage(hlimg, for: .highlighted)
                }
            }
        }
        if size != .zero {
            btn.frame = CGRect(origin: .zero, size: size)

        }else {
            btn.sizeToFit()
        }
        self.init(customView:btn)
    }
}
