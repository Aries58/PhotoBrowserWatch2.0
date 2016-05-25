//
//  DataManager.swift
//  PhotoBrowserWatch2.0
//
//  Created by 王亮 on 15/12/22.
//  Copyright © 2015年 wangliang. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    
    static let shareManager=DataManager()
    
    lazy var dataArray:NSArray = {
    
        let path=NSBundle.mainBundle().pathForResource("data", ofType: "plist")!
        
        return NSArray(contentsOfFile: path)!
        
    }()

}
