//
//  PietView.swift
//  Mondrian
//
//  Created by Donald Sheng on 2020-01-15.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class PietView: UIView {
    let lineWidth: CGFloat = 11
    let percent: CGFloat = 0.46
    var minW: CGFloat = 0
    var minH: CGFloat = 0

    override func draw(_ rect: CGRect) {
        minW = rect.width * percent
        minH = rect.height * percent
        
        let inset = -lineWidth/2
        let rectWithInset = rect.inset(by: UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset))
        drawLineIn(rect: rectWithInset)
    }

    func drawLineIn(rect: CGRect) {
        if rect.width < minW && rect.height < minH {
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
            toX = fromX + rect.width
            toY = fromY
            rect0 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: randomOffset)
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y + randomOffset, width: rect.width, height: rect.height - randomOffset)
        } else {
            randomOffset = CGFloat(arc4random() % UInt32(rect.width))
            fromX = rect.origin.x + randomOffset
            fromY = rect.origin.y
            toX = fromX
            toY = fromY + rect.height
            rect0 = CGRect(x: rect.origin.x, y: rect.origin.y, width: randomOffset, height: rect.height)
            rect1 = CGRect(x: rect.origin.x + randomOffset, y: rect.origin.y, width: rect.width - randomOffset, height: rect.height)
        }
        
        fillIn(rect: rect0, inset: lineWidth/2)
        fillIn(rect: rect1, inset: lineWidth/2)
        
        path.move(to: CGPoint(x: fromX, y: fromY))
        path.addLine(to: CGPoint(x: toX, y: toY))
        path.lineWidth = lineWidth
        path.stroke()
        
        drawLineIn(rect: rect0)
        drawLineIn(rect: rect1)
    }
    
    private func fillIn(rect: CGRect, inset: CGFloat) {
        let rectWithInset = rect.inset(by: UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset))
        let rectPath = UIBezierPath(rect: rectWithInset)
        let r = CGFloat(Int(arc4random()) % 1000) / 1000
        let g = CGFloat(Int(arc4random()) % 1000) / 1000
        let b = CGFloat(Int(arc4random()) % 1000) / 1000
        let a = CGFloat(Int(arc4random()) % 1000) / 1000
        let color = UIColor(red: r, green: g, blue: b, alpha: a)
        color.setFill()
        rectPath.fill()
    }
}
