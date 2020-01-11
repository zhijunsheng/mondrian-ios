import UIKit
class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        drawRect()
    }
    func drawRect() {
        let rect = UIBezierPath(rect: CGRect(x: 50, y: 50, width: bounds.width - 50 * 2, height: bounds.height - 50 * 2))
        rect.stroke()
    }
}
