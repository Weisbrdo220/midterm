//
//  InterfaceController.swift
//  Mbpicker WatchKit Extension
//
//  Created by Weisbrod, Evan R on 10/28/15.
//  Copyright © 2015 Weisbrod, Evan R. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pickerout: WKInterfacePicker!
    
    @IBAction func whichpressed()
    {
    }
    
    override func awakeWithContext(context: AnyObject?) {
        
        super.awakeWithContext(context)
        var thePickerItems = [WKPickerItem]()
        let tablevals = ["\(1,...1000)"];
        for (var i = 0 ; i < tablevals.count; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i].title =  tablevals[i]
            
        }
        self.pickerout.setItems(thePickerItems)
    
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
