//
//  CanvasView.swift
//  Mondrian
//
//  Created by Halwong on 2020/1/11.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        let rect = CGRect(x: 80, y: 70, width: 645, height: 231)
        let pen = UIBezierPath(rect: rect)
        
        pen.stroke()
        drawLine(rect: rect)
    }
    
    func drawLine(rect: CGRect) {
        let number = CGFloat(arc4random() % UInt32(rect.height))
        let y = rect.origin.y + number
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: rect.origin.x, y: y))
        pen.addLine(to: CGPoint(x: rect.origin.x + rect.width, y: y))
        pen.stroke()
    }
}
