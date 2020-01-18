import UIKit
class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        
        drawLine(rect)
//        drawLine(CGRect(x: 58, y: 173, width: 425, height: 579))
    }
    
    func drawLine(_ rect: CGRect) {
        if rect.height < 150 && rect.width < 175 {
            return
        }
        
        if rect.width < rect.height {
            let line = UIBezierPath()
            let arc : CGFloat = CGFloat(arc4random() % UInt32(rect.height) + 1)
            
            line.move(to: CGPoint(x: rect.origin.x, y: arc + rect.origin.y))
            line.addLine(to: CGPoint(x: rect.width + rect.origin.x, y: arc + rect.origin.y))
            line.lineWidth = 2
            line.stroke()
            
            let r1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: arc)
            let r2 = CGRect(x: rect.origin.x, y: arc + rect.origin.y, width: rect.width, height: rect.height - arc)
            
            let r2p = UIBezierPath(rect: r2)
            #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 0.2437928082).setFill()
            r2p.fill()

            let r1p = UIBezierPath(rect: r1)
            #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.2486622432).setFill()
            r1p.fill()
            
            drawLine(r1)
            drawLine(r2)
        } else {
            let line = UIBezierPath()
            let arc : CGFloat = CGFloat(arc4random() % UInt32(rect.height) + 1)
            
            line.move(to: CGPoint(x: arc + rect.origin.x, y: rect.origin.y))
            line.addLine(to: CGPoint(x: arc + rect.origin.x, y: rect.height + rect.origin.y))
            line.lineWidth = 2
            line.stroke()
            
            let r1 = CGRect(x: rect.origin.x, y: rect.origin.y, width: arc, height: rect.height)
            let r2 = CGRect(x: arc + rect.origin.x, y: rect.origin.y, width: rect.width - arc, height: rect.height)
            
            let r2p = UIBezierPath(rect: r2)
            #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 0.2437928082).setFill()
            r2p.fill()

            let r1p = UIBezierPath(rect: r1)
            #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.2486622432).setFill()
            r1p.fill()
            
            drawLine(r1)
            drawLine(r2)
        }
        
        
        
//        drawLine(r1)
    }
    
}
