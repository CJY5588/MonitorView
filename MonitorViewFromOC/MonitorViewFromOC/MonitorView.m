//
//  MonitorView.m
//  MonitorViewFromOC
//
//  Created by jianyi.chen on 2021/11/18.
//

#import "MonitorView.h"

@implementation MonitorView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // Drawing code here.
    self.layer.backgroundColor = [NSColor redColor].CGColor;
}

- (void)updateTrackingAreas {
    NSArray * trackingAreas = [self trackingAreas];
    for (NSTrackingArea *area in trackingAreas) {
        [self removeTrackingArea:area];
    }
    
    NSTrackingArea *trackingArea = [[NSTrackingArea alloc] initWithRect:self.bounds
                                                                options:(NSTrackingMouseEnteredAndExited |
                                                                         NSTrackingMouseMoved |
                                                                         NSTrackingActiveInActiveApp |
                                                                         NSTrackingInVisibleRect |
                                                                         NSTrackingAssumeInside |
                                                                         NSTrackingCursorUpdate)
                                                                  owner:self
                                                               userInfo:nil];
    [self addTrackingArea:trackingArea];
}

- (void)mouseEntered:(NSEvent *)event {
    self.layer.backgroundColor = [NSColor greenColor].CGColor;
}

- (void)mouseExited:(NSEvent *)event {
    self.layer.backgroundColor = [NSColor redColor].CGColor;
}


@end
