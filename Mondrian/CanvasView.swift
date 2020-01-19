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
        let pen = UIBezierPath(rect: rect)
        pen.stroke()
        
        drawLine(rect: rect)
    }
    
    func drawLine(rect: CGRect) {
        if rect.width < 320 && rect.height < 480 {
            return
        }
        
        let number: CGFloat
        let pen = UIBezierPath()
        
        if rect.width < rect.height {
            number = CGFloat(arc4random() % UInt32(rect.height))
            let y = rect.origin.y + number
            pen.move(to: CGPoint(x: rect.origin.x, y: y))
            pen.addLine(to: CGPoint(x: rect.origin.x + rect.width, y: y))
            let rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: number)
            let rect2 = CGRect(x: rect.origin.x, y: rect.origin.y + number, width: rect
                .width, height: rect.height - number)
            
            let pencil = UIBezierPath(rect: rect1)
            let abcd = UIBezierPath(rect: rect2)
//            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
//            pencil.fill()
//            #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setFill()
//            abcd.fill()
            pen.stroke()
            drawLine(rect: rect1)
            drawLine(rect: rect2)
        } else {
            number = CGFloat(arc4random() % UInt32(rect.width))
            let x = rect.origin.x + number
            pen.move(to: CGPoint(x: x, y: rect.origin.y))
            pen.addLine(to: CGPoint(x: x, y: rect.origin.y + rect.height))
            
            let rect3 = CGRect(x: rect.origin.x, y: rect.origin.y, width: number, height: rect.height)
            let rect4 = CGRect(x: rect.origin.x + number, y: rect.origin.y, width: rect.width - number, height: rect.height)
            
            let pencil = UIBezierPath(rect: rect3)
            let abcd = UIBezierPath(rect: rect4)
            
//            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
//            pencil.fill()
//            #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1).setFill()
//            abcd.fill()
            pen.stroke()
            drawLine(rect: rect3)
            drawLine(rect: rect4)
        }
    }
}

