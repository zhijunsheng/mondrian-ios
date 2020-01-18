

import UIKit

class MondrianView: UIView {
    
    
    
    override func draw(_ rect: CGRect) {
        
        drawMondrianLineIn(rect: rect)
    }
    
    func drawMondrianLineIn(rect: CGRect) {
        if rect.width < 150 {
            return
        }
        
        if rect.height < 225 {
            return
        }
        
        if rect.width > rect.height {
            let mondrianX1: CGFloat = CGFloat((arc4random() % UInt32(rect.width))) + rect.origin.x
            let mondrianY1: CGFloat = rect.origin.y
            
            let mondrianX2: CGFloat = mondrianX1
            let mondrianY2: CGFloat = rect.height + rect.origin.y
            
            let mondrianRandomLine = UIBezierPath()
            mondrianRandomLine.move(to: CGPoint(x: mondrianX1, y: mondrianY1))
            mondrianRandomLine.addLine(to: CGPoint(x: mondrianX2, y: mondrianY2))
            mondrianRandomLine.lineWidth = 6.125
            mondrianRandomLine.stroke()
            
            let rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: mondrianX1 - rect.origin.x, height: rect.height)
            let rect2 = CGRect(x: mondrianX2, y: rect.origin.y, width: rect.origin.x + rect.width - mondrianX2, height: rect.height)
            
            drawMondrianLineIn(rect: rect1)
            drawMondrianLineIn(rect: rect2)
            
//            let mondriancolor1 = UIBezierPath(rect: rect1)
//            #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 0.5).setFill()
//            mondriancolor1.fill()
//
//            let mondriancolor2 = UIBezierPath(rect: rect2)
//            #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.5).setFill()
//            mondriancolor2.fill()
            
            
        } else {
            let mondrianX1: CGFloat = rect.origin.x
            let mondrianY1: CGFloat = CGFloat((arc4random() % UInt32(rect.height))) + rect.origin.y
            
            let mondrianX2: CGFloat = rect.width + rect.origin.x
            let mondrianY2: CGFloat = mondrianY1
            
            let mondrianRandomLine = UIBezierPath()
            mondrianRandomLine.move(to: CGPoint(x: mondrianX1, y: mondrianY1))
            mondrianRandomLine.addLine(to: CGPoint(x: mondrianX2, y: mondrianY2))
            mondrianRandomLine.lineWidth = 6.125
            mondrianRandomLine.stroke()
            
            let rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: mondrianY1 - rect.origin.y)
            let rect2 = CGRect(x: rect.origin.x, y: mondrianY1, width: rect.width, height: rect.height - mondrianY1 + rect.origin.y)
            
//            let mondriancolor1 = UIBezierPath(rect: rect1)
//            #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 0.5).setFill()
//            mondriancolor1.fill()
//
//            let mondriancolor2 = UIBezierPath(rect: rect2)
//            #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.5).setFill()
//            mondriancolor2.fill()
            drawMondrianLineIn(rect: rect1)
            drawMondrianLineIn(rect: rect2)
        }
        
        
        
    }
    
}
