//
//  TestItemLoader.swift
//  ui_test
//
//  Created by Nicolas  on 09.10.23.
//

import Foundation
import AppKit

class TestItemLoader: NSView{
    @IBOutlet weak var nslabel: NSTextField?
    
    override init(frame: NSRect){
        super.init(frame: frame)
        //load view from "testitem" nib
        let listitem = NSNib(nibNamed: NSNib.Name(stringLiteral: "testitem"), bundle: nil)
        listitem?.instantiate(withOwner: self, topLevelObjects: nil)
        self.addSubview(self.nslabel!)
    }
    //here I make sure that the context menu appears upon a registered right click
    override func rightMouseDown(with event: NSEvent) {
        //here I just build the test menu that is supposed to appear as context menu
        let context_menu = NSMenu()
        let testitem = NSMenuItem()
        testitem.title = "Test"
        context_menu.addItem(testitem)
        NSMenu.popUpContextMenu(context_menu, with: event, for: self)
        //for testing purposes, so I can see if this is called at all; and it is
        print(event)
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
    }
    
}
