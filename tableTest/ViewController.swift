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
    
    var listen: [Liste]! = [Liste]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        guard listen != nil else {
            return 0
        }
        return listen.count
    }
    
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
       if let column = tableColumn {
            if let cellView = tableView.make(withIdentifier: column.identifier, owner: nil) as? NSTableCellView {
                guard listen != nil else {
                    return cellView
                }
         //Das geht Nicht       let liste = listen[indexpath.row]
                
                if (column.identifier == "name") {
                    cellView.textField?.stringValue = "New servo" //und da solte es übergeben meiner meinung  werden aber wie
                    return cellView                               //ich habe mir gedacht statt ( "new Servo" ) liste.servoname
                }
                else if (column.identifier == "busNr") {
                    cellView.textField?.intValue = 11       // und da auch
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


