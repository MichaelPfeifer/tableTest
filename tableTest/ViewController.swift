//
//  ViewController.swift
//  tableTest
//
//  Created by Michael Pfeifer on 30.09.16.
//  Copyright © 2016 Michael Pfeifer. All rights reserved.
//

import Cocoa
import AppKit

class ViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate{

    @IBOutlet weak var tableView: NSTableView!
    
    let appDelegate = NSApplication.shared().delegate as! AppDelegate
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
  
        return 1
    }
    
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
       

        
        if let column = tableColumn {
            if let cellView = tableView.make(withIdentifier: column.identifier, owner: nil) as? NSTableCellView {
                
                if (column.identifier == "name") {
                    cellView.textField?.stringValue = "New Servo"
                    return cellView
                }
                else if (column.identifier == "busNr") {
                    cellView.textField?.intValue = 11
                    return cellView
                }
                
                return cellView
            }
        }
        return nil
    }
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}


