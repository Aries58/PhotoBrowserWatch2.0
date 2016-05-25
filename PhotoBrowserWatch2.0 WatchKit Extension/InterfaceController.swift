//
//  InterfaceController.swift
//  PhotoBrowserWatch2.0 WatchKit Extension
//
//  Created by 王亮 on 15/12/22.
//  Copyright © 2015年 wangliang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var backImage: WKInterfaceButton!
    
    @IBOutlet var indexLabel: WKInterfaceLabel!
    
    var detailModel: AnyObject?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var names=[String]()
        
        var contexts=[AnyObject]()
        
        let array=DataManager.shareManager.dataArray
        
        if context == nil {
            
            for i in 0..<array.count {
                
                names.append("Aries")
                
                contexts.append(array[i])
            }
            
          WKInterfaceController.reloadRootControllersWithNames(names, contexts: contexts)
        
        }else
        {
            detailModel=context
            
            let info=context as! [String: AnyObject]
            let photo_name=info["photo_name"] as! String
            let index=array.indexOfObject(context!) + 1
            
            indexLabel.setText("\(index)/\(array.count)")
            backImage.setBackgroundImageNamed("\(photo_name).jpg")
            
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
     
        return detailModel
    }

}
