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
        let pen = UIBezierPath(rect: CGRect(x: 120, y: 200, width: 400, height: 700))
        
        pen.stroke()
        drawLine()
    }
    
    func drawLine() {
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 100, y: 300))
        pen.addLine(to: CGPoint(x: 400, y: 300))
        pen.stroke()
    }
}
