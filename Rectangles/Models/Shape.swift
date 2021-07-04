//
//  Shape.swift
//  Rectangles
//
//  Created by Christopher Alford on 4/7/21.
//

import UIKit

class Shape {
    
    // Center of shape
    var xPosition: CGFloat
    var yPosition: CGFloat
    
    var bgColor: UIColor
    var borderColor: UIColor
    var borderWidth: CGFloat
    var rotation: Double
    
    init(xPosition: CGFloat, yPosition: CGFloat) {
        self.xPosition = xPosition
        self.yPosition = yPosition
        borderWidth = 0
        rotation = 0
        bgColor = Color.randomColor()
        borderColor = bgColor
    }
    
    
}
