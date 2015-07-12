//
//  ImageStreamView.swift
//  ImageStream
//
//  Created by Kreft, Michal on 11.07.15.
//  Copyright © 2015 yomajkel. All rights reserved.
//

import Cocoa
import ScreenSaver

class ImageStreamView: ScreenSaverView {
    
    var image: NSImage?
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        loadImage()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadImage()
    }

    override func startAnimation() {
        super.startAnimation()
    }
    
    override func stopAnimation() {
        super.stopAnimation()
    }
    
    override func drawRect(rect: NSRect) {
//        super.drawRect(rect)
        
        let context: CGContextRef = NSGraphicsContext.currentContext()!.CGContext
        CGContextSetFillColorWithColor(context, NSColor.blueColor().CGColor);
        CGContextSetAlpha(context, 0.9);
        CGContextFillRect(context, rect);
        
//        if let image = image {
//            let point = CGPoint(x: (frame.size.width - image.size.width) / 2, y: (frame.size.height - image.size.height) / 2)
//            image.drawAtPoint(point, fromRect: NSZeroRect, operation: .CompositeSourceOver, fraction: 1)
//        }
    }
    
    override func animateOneFrame() {
        
    }
    
    override func hasConfigureSheet() -> Bool {
        return false
    }
    
    override func configureSheet() -> NSWindow? {
        return nil
    }
    
    func loadImage() {
        let url = NSURL(string: "https://raw.githubusercontent.com/yomajkel/ImageStream/master/ImageStream/swift.png")
        let data = NSData(contentsOfURL: url!)
        if let data = data {
            image = NSImage(data: data)
        }
    }
    
}
