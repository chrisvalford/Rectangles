//
//  ViewController.swift
//  Rectangles
//
//  Created by Christopher Alford on 4/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Only using rectangles at present
    var shapes: [Rectangle] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGestureRecognizer)
        
        
    }

    @IBAction func didTapView(_ sender: UITapGestureRecognizer) {
        let tapPoint = sender.location(in: self.view)
        let newRectangle = Rectangle(tapX: tapPoint.x, tapY: tapPoint.y)
        print("Tapped, height: \(newRectangle.height), width: \(newRectangle.width)")
        view.addSubview(newRectangle.view!)
        shapes.append(newRectangle)
    }
    
    
}

