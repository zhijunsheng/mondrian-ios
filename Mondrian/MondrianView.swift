//
//  MondrianView.swift
//  Mondrian
//
//  Created by Lambert Lin on 2020/1/11.
//  Copyright © 2020 Grace Huang. All rights reserved.
//

import UIKit

class MondrianView: UIView {
    override func draw(_ rect: CGRect) {
        let r = CGRect(x: 97, y: 56, width:  470, height:460)
        let pencil = UIBezierPath(rect: r)
      
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.stroke()
        drawLine(rectangle: r)
    }
    
    func drawLine(rectangle: CGRect)  {
        let pencil = UIBezierPath()
        let randomOffset =  CGFloat(arc4random() % UInt32(rectangle.height))
        
        if rectangle.width > rectangle.height {
            pencil.move(to: CGPoint(x: randomOffset + rectangle.origin.x, y: rectangle.origin.y))
            pencil.addLine(to: CGPoint(x: randomOffset + rectangle.origin.x, y: rectangle.origin.y + rectangle.height))
        } else {
            pencil.move(to: CGPoint(x: rectangle.origin.x, y: rectangle.origin.y + randomOffset))
            pencil.addLine(to: CGPoint(x: rectangle.origin.x + rectangle.width, y: rectangle.origin.y + randomOffset))
        }
        
        if rectangle.width > rectangle.height {
            let rect0 = CGRect(x: rectangle.origin.x, y: rectangle.origin.y , width:  randomOffset   , height: rectangle.height)
                    let rect0Path = UIBezierPath(rect: rect0)
                    #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
                    rect0Path.fill()
            let rect1 = CGRect(x: rectangle.origin.x + rect0.width, y: rectangle.origin.y  , width: rectangle.width - rect0.width , height:rectangle.height )
                    let rect1path = UIBezierPath(rect: rect1)
                    #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1).setFill()
                    rect1path.fill()
        } else {
            
            let rect0 = CGRect(x: rectangle.origin.x, y: rectangle.origin.y , width:  rectangle.width   , height: randomOffset)
            let rect0Path = UIBezierPath(rect: rect0)
            #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1).setFill()
            rect0Path.fill()
            let rect1 = CGRect(x: rectangle.origin.x , y: rectangle.origin.y + rect0.height  , width: rectangle.width  , height:rectangle.height - rect0.height )
            let rect1path = UIBezierPath(rect: rect1)
            #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1).setFill()
            rect1path.fill()
            
        }
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        pencil.stroke()
    }
    
   
}

