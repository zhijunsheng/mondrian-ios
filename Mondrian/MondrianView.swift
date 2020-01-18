

import UIKit

class MondrianView: UIView {
    
    
    
    override func draw(_ rect: CGRect) {
        
        drawMondrianLineIn(rect: rect.inset(by: UIEdgeInsets(top: -6.125, left: -6.125, bottom: -6.125, right: -6.125)))
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
            mondrianRandomLine.lineWidth = 12.25
            
            
            let rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: mondrianX1 - rect.origin.x, height: rect.height)
            let rect2 = CGRect(x: mondrianX2, y: rect.origin.y, width: rect.origin.x + rect.width - mondrianX2, height: rect.height)
            
            
            
            let mondriancolor1 = UIBezierPath(rect: rect1.inset(by: UIEdgeInsets(top: 6.125, left: 6.125, bottom: 6.125, right: 6.125)))
            #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1).setFill()
            mondriancolor1.fill()

            let mondriancolor2 = UIBezierPath(rect: rect2.inset(by: UIEdgeInsets(top: 6.125, left: 6.125, bottom: 6.125, right: 6.125)))
            #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1).setFill()
            mondriancolor2.fill()
            mondrianRandomLine.stroke()
            drawMondrianLineIn(rect: rect1)
            drawMondrianLineIn(rect: rect2)
        } else {
            let mondrianX1: CGFloat = rect.origin.x
            let mondrianY1: CGFloat = CGFloat((arc4random() % UInt32(rect.height))) + rect.origin.y
            
            let mondrianX2: CGFloat = rect.width + rect.origin.x
            let mondrianY2: CGFloat = mondrianY1
            
            let mondrianRandomLine = UIBezierPath()
            mondrianRandomLine.move(to: CGPoint(x: mondrianX1, y: mondrianY1))
            mondrianRandomLine.addLine(to: CGPoint(x: mondrianX2, y: mondrianY2))
            mondrianRandomLine.lineWidth = 12.25
            
            
            let rect1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: mondrianY1 - rect.origin.y)
            let rect2 = CGRect(x: rect.origin.x, y: mondrianY1, width: rect.width, height: rect.height - mondrianY1 + rect.origin.y)
            
            let mondriancolor1 = UIBezierPath(rect: rect1.inset(by: UIEdgeInsets(top: 6.125, left: 6.125, bottom: 6.125, right: 6.125)))
            #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
            mondriancolor1.fill()

            let mondriancolor2 = UIBezierPath(rect: rect2.inset(by: UIEdgeInsets(top: 6.125, left: 6.125, bottom: 6.125, right: 6.125)))
            #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).setFill()
            mondriancolor2.fill()
            mondrianRandomLine.stroke()
            drawMondrianLineIn(rect: rect1)
            drawMondrianLineIn(rect: rect2)
        }
        
        
        
    }
    
}
