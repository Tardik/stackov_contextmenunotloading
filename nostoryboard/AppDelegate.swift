//
//  AppDelegate.swift
//  ui_test
//
//  Created by Nicolas  on 24.09.23.
//

import Cocoa

let statusbarmenu = StatusBarController()

class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusbarmenu.build_statusbar_button()
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

