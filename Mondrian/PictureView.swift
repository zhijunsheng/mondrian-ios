//
//  PictureView.swift
//  Mondrian
//
//  Created by Grace Huang on 1/2/20.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class PictureView: UIView {
    override func draw(_ rect: CGRect) {
//        let rectBig:CGRect = CGRect(x: 50, y: 50, width: 650, height: 900)
//        let pen = UIBezierPath(rect: rectBig)
//        pen.stroke()
        
        handleRect(rect: rect)
    }
    
    var count = 0
    func handleRect(rect: CGRect) { // HW: add logic to check vertical or horizontal to add
        if count > 9 {
            return
        }
        count += 1
        
        let pen = UIBezierPath()
        let rect1: CGRect
        let rect2: CGRect
        let randomNumber: CGFloat = CGFloat(arc4random() % UInt32(rect.height))
        
        if rect.width < rect.height {
            pen.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y + randomNumber))
            pen.addLine(to: CGPoint(x: rect.origin.x + rect.width, y: rect.origin.y + randomNumber))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: randomNumber)
            rect2 = CGRect(x: rect.origin.x, y: rect.origin.y + randomNumber, width: rect.width, height: randomNumber)
        } else {
            pen.move(to: CGPoint(x: rect.origin.x + randomNumber, y: rect.origin.y))
            pen.addLine(to: CGPoint(x: rect.origin.x + randomNumber, y: rect.origin.y + rect.height))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: randomNumber, height: rect.height)
            rect2 = CGRect(x: rect.origin.x + randomNumber, y: rect.origin.y, width: rect.width  - randomNumber, height: rect.height)
        }
        pen.lineWidth = 3
        pen.stroke()

        handleRect(rect: rect1)
//        handleRect(rect: rect2)
        
    }
}
