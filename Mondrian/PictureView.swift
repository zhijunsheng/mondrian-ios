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
        handleRect(rect: rect)
    }
    
    func handleRect(rect: CGRect) {
        if rect.width < 225 && rect.height < 225 {
            return
        }
        let pen = UIBezierPath()
        let rect1: CGRect
        let rect2: CGRect
        
        if rect.width < rect.height {
            let randomNumber: CGFloat = CGFloat(arc4random() % UInt32(rect.height))
            pen.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y + randomNumber))
            pen.addLine(to: CGPoint(x: rect.origin.x + rect.width, y: rect.origin.y + randomNumber))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: randomNumber)
            rect2 = CGRect(x: rect.origin.x, y: rect.origin.y + randomNumber, width: rect.width, height: rect.height - randomNumber)
            let colorFillRect1 = UIBezierPath(rect: rect1)
            let colorFillRect2 = UIBezierPath(rect: rect2)
            #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
            colorFillRect1.fill()
            #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1).setFill()
            colorFillRect2.fill()
        } else {
            let randomNumber: CGFloat = CGFloat(arc4random() % UInt32(rect.width))
            pen.move(to: CGPoint(x: rect.origin.x + randomNumber, y: rect.origin.y))
            pen.addLine(to: CGPoint(x: rect.origin.x + randomNumber, y: rect.origin.y + rect.height))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: randomNumber, height: rect.height)
            rect2 = CGRect(x: rect.origin.x + randomNumber, y: rect.origin.y, width: rect.width  - randomNumber, height: rect.height)
            let colorFillRect1 = UIBezierPath(rect: rect1)
            let colorFillRect2 = UIBezierPath(rect: rect2)
            #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1).setFill()
            colorFillRect1.fill()
            #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
            colorFillRect2.fill()
        }
        pen.lineWidth = 9
        handleRect(rect: rect1)
        handleRect(rect: rect2)
        pen.stroke()
    }
}
