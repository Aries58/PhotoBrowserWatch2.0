//
//  DetailInterfaceController.swift
//  PhotoBrowserWatch2.0
//
//  Created by 王亮 on 15/12/22.
//  Copyright © 2015年 wangliang. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    
    @IBOutlet var placeLabel: WKInterfaceLabel!
    
    @IBOutlet var professionLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let info=context as! [String: AnyObject]
        
        let name=info["name"] as! String
        let city=info["city"] as! String
        let type=info["type"] as! String
        
        nameLabel.setText(name)
        placeLabel.setText(city)
        professionLabel.setText(type)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
