//
//  InterfaceController.swift
//  UniversalCalc WatchKit Extension
//
//  Created by Liellison Menezes on 12/01/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var myTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        myTable.setNumberOfRows(3, withRowType: "MyRowController")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
