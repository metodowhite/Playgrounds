//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let view = UIView(frame: CGRect(x: 30, y: 30, width: 500, height: 90))
view.layer.borderWidth = 1
view.layer.borderColor = UIColor.blackColor().colorWithAlphaComponent(0.3).CGColor
view.clipsToBounds = false

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 550, height: 150))
containerView.addSubview(view)

func distribute(steps: Int, onView view: UIView) {
    for i in 0..<steps {
        
        let markerY: CGFloat = 0
        let markerWidth: CGFloat = 3
        let markerHeight = view.bounds.size.height
        
        let viewWidth = CGRectGetWidth(view.bounds)
        
        let markerSpace = viewWidth / CGFloat(steps - 1)
        let markerX =  (markerSpace * CGFloat(i)) - markerWidth / 2
        
        createMarker(
            frame: CGRect(x: markerX, y: markerY, width: markerWidth, height: markerHeight),
            color: UIColor(hue: CGFloat(i) / 100.0, saturation: 1, brightness: 1, alpha: 1.0),
            text: "\(i + 1)",
            view: view
        )
    }
    
}

func createMarker(frame frame: CGRect, color: UIColor, text: String, view: UIView) {
    let marker = UIView(frame: frame)
    marker.backgroundColor = color
    view.addSubview(marker)

    createLabel(frame: frame, color: color, text: text, view: view)
}

func createLabel(frame frame: CGRect, color: UIColor, text: String, view: UIView) {
    let attributes = [
        NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 9)!,
        NSForegroundColorAttributeName: color
    ]
    let attributedText = NSAttributedString(string: text, attributes: attributes)
    let label = UILabel(frame: CGRect(x: frame.origin.x, y: frame.size.height + 5, width: 100, height: 100))
    label.attributedText = attributedText
    label.textAlignment = .Center
    label.sizeToFit()
    label.frame.origin = CGPoint(x: frame.origin.x - label.bounds.size.width / 2 + 1, y: frame.size.height + 5)
    view.addSubview(label)
}

func cleanSubviews(inView view: UIView) {
    for subview in view.subviews.enumerate() {
        subview.element.removeFromSuperview()
    }
}

distribute(42, onView: view)
containerView

cleanSubviews(inView: view)
distribute(10, onView: view)
containerView

cleanSubviews(inView: view)
distribute(33, onView: view)
containerView













