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

        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x:234, y: 2))
        pencil.addLine(to: CGPoint(x: 234, y: 345))
      
        
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
         pencil.stroke()
        
    }
}
