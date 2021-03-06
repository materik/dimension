//
//  CGRect.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

public extension CGRect {
    
    // MARK: properties
    
    var x: CGFloat {
        set { self.origin.x = newValue }
        get { return self.origin.x }
    }
    var y: CGFloat {
        set { self.origin.y = newValue }
        get { return self.origin.y }
    }
    var w: CGFloat {
        set { self.size.width = newValue }
        get { return self.width }
    }
    var h: CGFloat {
        set { self.size.height = newValue }
        get { return self.height }
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
    
    var center: CGPoint {
        set { self.origin = newValue - 0.5 * self.size }
        get { return self.origin + 0.5 * self.size }
    }
    
    // MARK: init
    
    init(origin: CGPoint) {
        self.init(origin: origin, size: CGSize())
    }
    
    init(size: CGSize) {
        self.init(origin: CGPoint(), size: size)
    }
    
    init(x: CGFloat) {
        self.init(x: x, y: 0.0, width: 0.0, height: 0.0)
    }

    init(y: CGFloat) {
        self.init(x: 0.0, y: y, width: 0.0, height: 0.0)
    }
    
    init(w: CGFloat) {
        self.init(width: w)
    }
    
    init(h: CGFloat) {
        self.init(height: h)
    }
    
    init(width: CGFloat) {
        self.init(x: 0.0, y: 0.0, width: width, height: 0.0)
    }
    
    init(height: CGFloat) {
        self.init(x: 0.0, y: 0.0, width: 0.0, height: height)
    }
    
    init(x: CGFloat, y: CGFloat) {
        self.init(x: x, y: y, size: CGSize())
    }
    
    init(x: CGFloat, y: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: x, y: y), size: size)
    }
    
    init(x: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: x, y: 0.0), size: size)
    }
    
    init(y: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: 0.0, y: y), size: size)
    }
    
    init(w: CGFloat, h: CGFloat) {
        self.init(width: w, height: h)
    }
    
    init(width: CGFloat, height: CGFloat) {
        self.init(origin: CGPoint(), width: width, height: height)
    }
    
    init(origin: CGPoint, w: CGFloat, h: CGFloat) {
        self.init(origin: origin, width: w, height: h)
    }
    
    init(origin: CGPoint, width: CGFloat, height: CGFloat) {
        self.init(origin: origin, size: CGSize(width: width, height: height))
    }
    
}
