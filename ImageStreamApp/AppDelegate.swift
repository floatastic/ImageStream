//
//  AppDelegate.swift
//  ImageStreamApp
//
//  Created by Kreft, Michal on 12.07.15.
//  Copyright © 2015 yomajkel. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    lazy var screenSaverView = ImageStreamView(frame: NSZeroRect, isPreview: false)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        if let screenSaverView = screenSaverView {
            screenSaverView.frame = window.contentView.bounds;
            window.contentView.addSubview(screenSaverView);
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

