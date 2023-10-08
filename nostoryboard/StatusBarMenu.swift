import Foundation
import AppKit

var statusbar: NSStatusBar!
var statusitem: NSStatusItem!

class StatusBarController{

    let buttonmenu = NSMenu()
    //here I build the button and its menu, this is called in ApplicationDidFinishLaunching
    func build_statusbar_button(){
        statusbar = NSStatusBar()
        statusitem = statusbar.statusItem(withLength: NSStatusItem.variableLength)
        let button = statusitem.button
        button!.image = NSImage(named: NSImage.cautionName)
        statusitem.menu = NSMenu()
        //Here I add the only NSMenuItem to the menu
        statusitem.menu!.addItem(self.testitem_builder())
    }
    
    func testitem_builder()->NSMenuItem{
        let testitem = NSMenuItem()
        //set the custom view as the NSMenuItem's content by loading from nib file 
        testitem.view = TestItemLoader(frame: NSRect(x: 0, y: 0, width: 200, height: 16))
        return testitem
    }
    
}

