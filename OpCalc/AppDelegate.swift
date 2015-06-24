//
//  AppDelegate.swift
//  OpCalc
//
//  Created by Ignat Remizov on 8/22/14.
//  Copyright (c) 2014 Fuzz Productions. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!
    @IBOutlet var mainViewController: MainViewController!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        // 1. Create the master View Controller
        //mainView =//MainViewController.alloc().initWithNibName("MasterViewController", bundle:nil)
        mainViewController = MainViewController(nibName: "MainViewController", bundle: nil)
        // 2. Add the view controller to the Window's content view
        window.contentView.addSubview(mainViewController.view)
        mainViewController.view.frame = window.contentView.bounds
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

