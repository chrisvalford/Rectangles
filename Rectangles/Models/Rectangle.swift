//
//  Rectangle.swift
//  Rectangles
//
//  Created by Christopher Alford on 4/7/21.
//

import UIKit

final class Rectangle: Shape {
    
    var width: CGFloat = 0
    var height: CGFloat = 0
    
    var view: UIView?
    var initialCenter = CGPoint()
    
    // Uses tap position, View will be centered on this
    init(tapX: CGFloat, tapY: CGFloat) {
        width = CGFloat.random(in: 30...150)
        height = CGFloat.random(in: 30...150)
        super.init(xPosition: tapX - (width/2), yPosition: tapY - (height/2))
        view = UIView(frame: CGRect(x: xPosition, y: yPosition, width: width, height: height))
        view?.backgroundColor = bgColor
        
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(didLongPress(_:)))
        view!.addGestureRecognizer(longPressRecognizer)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didPan(_:)))
        view!.addGestureRecognizer(panGestureRecognizer)
    }
    
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
        let start = sender.location(in: self.view)
        print("Long press: \(start)")
    }
    
    @IBAction func didPan(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        switch sender.state {
        case .began:
            initialCenter = self.view!.center
            break
            
        case .changed:
            self.view?.center = CGPoint(
                x: initialCenter.x + translation.x,
                y: initialCenter.y + translation.y
            )
            break
            
        case .ended:
            break
            
        default:
            break
        }
    }
}
