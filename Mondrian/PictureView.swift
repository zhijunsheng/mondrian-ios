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
        let rectBig:CGRect = CGRect(x: 50, y: 50, width: 650, height: 900)
        let pen = UIBezierPath(rect: rectBig)
        pen.stroke()
        
        handleRect(rect: rectBig)
    }
    
    func handleRect(rect: CGRect) { // HW: add logic to check vertical or horizontal to add
        
        
        let pen = UIBezierPath()
        let rect1: CGRect
        let rect2: CGRect
        
        if rect.width < rect.height {
            pen.move(to: CGPoint(x: rect.origin.x, y: rect.origin.y + rect.height / 3))
            pen.addLine(to: CGPoint(x: rect.origin.x + rect.width, y: rect.origin.y + rect.height / 3))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: rect.height / 3)
            rect2 = CGRect(x: rect.origin.x, y: rect.origin.y + 200, width: rect.width, height: rect.height / 3)
            
        } else {
            pen.move(to: CGPoint(x: rect.origin.x + rect.width / 3, y: rect.origin.y))
            pen.addLine(to: CGPoint(x: rect.origin.x + rect.width / 3, y: rect.origin.y + rect.height))
            rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width / 3, height: rect.height)
            rect2 = CGRect(x: rect.origin.x + rect.width / 3, y: rect.origin.y, width: rect.width  - rect.width / 3, height: rect.height)
        }
        pen.stroke()

        if rect1.width < 100 || rect1.height < 100{
            return
        }

        if rect2.width < 100 || rect2.height < 100{
            return
        }
        handleRect(rect: rect1)
        handleRect(rect: rect2)
        
    }
}
