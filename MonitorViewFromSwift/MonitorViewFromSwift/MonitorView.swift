//
//  MonitorView.swift
//  MonitorViewFromSwift
//
//  Created by jianyi.chen on 2021/11/18.
//

import Cocoa

class MonitorView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        self.layer?.backgroundColor = NSColor.red.cgColor
        // Drawing code here.
    }
    
    override func updateTrackingAreas() {
        let trackingAreas = self.trackingAreas
        for area in trackingAreas {
            self.removeTrackingArea(area)
        }

        let trackingArea = NSTrackingArea.init(rect: self.bounds, options: [NSTrackingArea.Options.mouseEnteredAndExited,
                                                                            NSTrackingArea.Options.mouseMoved,
                                                                            NSTrackingArea.Options.activeInActiveApp,
                                                                            NSTrackingArea.Options.inVisibleRect,
                                                                            NSTrackingArea.Options.assumeInside,
                                                                            NSTrackingArea.Options.cursorUpdate],
                                               owner: self, userInfo: nil)
        
        self .addTrackingArea(trackingArea)
    
    }
    
    override func mouseEntered(with event: NSEvent) {
        self.layer?.backgroundColor = NSColor.green.cgColor
    }
    
    override func mouseExited(with event: NSEvent) {
        self.layer?.backgroundColor = NSColor.red.cgColor
    }
    
}
