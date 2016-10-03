//
//  AppDelegate.swift
//  tableTest
//
//  Created by Michael Pfeifer on 30.09.16.
//  Copyright © 2016 Michael Pfeifer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    lazy var coreDataResource = ResourceModel()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    lazy var documentDir: NSURL = {
       let allUrls =  FileManager.default .urls(for: .documentDirectory, in: .userDomainMask)
        
        return allUrls.first! as NSURL
        
        
    }()
    
}

