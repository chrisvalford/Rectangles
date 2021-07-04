//
//  Color.swift
//  Rectangles
//
//  Created by Christopher Alford on 4/7/21.
//

import UIKit

class Color {
    
    static func randomColor() -> UIColor {
        let hue = CGFloat.random(in: 0...1)
        return UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 1.0, alpha: 0.75)
    }
}
