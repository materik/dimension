//
//  UIView.swift
//  WatchTheDaysLeft
//
//  Created by materik on 12/03/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit

public extension UIView {

    // MARK: properties
    
    var x: CGFloat {
        set { self.frame.x = newValue }
        get { return self.frame.x }
    }
    var y: CGFloat {
        set { self.frame.y = newValue }
        get { return self.frame.y }
    }
    var w: CGFloat {
        set { self.width = newValue }
        get { return self.width }
    }
    var h: CGFloat {
        set { self.height = newValue }
        get { return self.height }
    }
    
    var width: CGFloat {
        set { self.frame.size.width = newValue }
        get { return self.frame.width }
    }
    var height: CGFloat {
        set { self.frame.size.height = newValue }
        get { return self.frame.height }
    }
    
    var top: CGFloat {
        set { self.y = newValue }
        get { return self.y }
    }
    var right: CGFloat {
        set { self.x = newValue - self.w }
        get { return self.x + self.w }
    }
    var bottom: CGFloat {
        set { self.y = newValue - self.h }
        get { return self.y + self.h }
    }
    var left: CGFloat {
        set { self.x = newValue }
        get { return self.x }
    }
    
    var origin: CGPoint {
        set { self.frame.origin = newValue }
        get { return self.frame.origin }
    }
    var size: CGSize {
        set { self.frame.size = newValue }
        get { return self.frame.size }
    }
    
    // MARK: init
    
    convenience init(origin: CGPoint) {
        self.init(frame: CGRect(origin: origin))
    }
    
    convenience init(size: CGSize) {
        self.init(frame: CGRect(size: size))
    }

}
