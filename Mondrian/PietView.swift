//
//  PietView.swift
//  Mondrian
//
//  Created by Donald Sheng on 2020-01-15.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class PietView: UIView {

    override func draw(_ rect: CGRect) {
//        drawLineIn(rect: CGRect(x: 0, y: 0, width: rect.width, height: rect.height / 2))
        drawLineIn(rect: rect)
    }

    func drawLineIn(rect: CGRect) {
        if rect.width < 350 && rect.height < 350 {
            return
        }
        
        let path = UIBezierPath()
        
        let randomOffset: CGFloat
        let fromX, fromY, toX, toY : CGFloat
        let rect0: CGRect
        let rect1: CGRect
        
        if rect.width < rect.height {
            randomOffset = CGFloat(arc4random() % UInt32(rect.height))
            fromX = rect.origin.x
            fromY = rect.origin.y + randomOffset
            toX = rect.origin.x + rect.width
            toY = rect.origin.y + randomOffset
            rect0 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: randomOffset)
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y + randomOffset, width: rect.width, height: rect.height - randomOffset)
        } else {
            randomOffset = CGFloat(arc4random() % UInt32(rect.width))
            fromX = rect.origin.x + randomOffset
            fromY = rect.origin.y
            toX = rect.origin.x + randomOffset
            toY = rect.origin.y + rect.height
            rect0 = CGRect(x: rect.origin.x, y: rect.origin.y, width: randomOffset, height: rect.height)
            rect1 = CGRect(x: rect.origin.x + randomOffset, y: rect.origin.y, width: rect.width - randomOffset, height: rect.height)
        }
        
//        let rect0Path = UIBezierPath(rect: rect0)
//        UIColor.green.setFill()
//        rect0Path.fill()
//        let rect1Path = UIBezierPath(rect: rect1)
//        UIColor.yellow.setFill()
//        rect1Path.fill()
        
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        path.lineWidth = 7
        path.stroke()
        
        drawLineIn(rect: rect0)
        drawLineIn(rect: rect1)
    }
}
