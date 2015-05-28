// Playground - noun: a place where people can play

import UIKit
import XCPlayground

let leImage = UIImage(named: "originalImage.jpg")
let leBezierMask = UIBezierPath(ovalInRect: CGRect(x: 0, y: 0, width: 700, height: 700))

func maskImage(image: UIImage, withBezier bezier: UIBezierPath) -> (positive: UIImage, negative: UIImage) {
    let origin2 = CGPoint(x: -450, y: -400)
    let rect = bezier.bounds

    UIGraphicsBeginImageContextWithOptions(rect.size, false, image.scale)
    let context = UIGraphicsGetCurrentContext()
   
    CGContextSaveGState(context)
    
    CGContextAddPath(context, bezier.CGPath)
    CGContextClip(context)
    image.drawInRect(CGRect(origin: origin2, size: image.size))
    let positive = UIGraphicsGetImageFromCurrentImageContext()

    CGContextRestoreGState(context)
    
    CGContextAddPath(context, bezier.CGPath)
    image.drawInRect(CGRect(origin: origin2, size: image.size))
    CGContextEOClip(context);
    CGContextClearRect(context, rect);
    let negative = UIGraphicsGetImageFromCurrentImageContext()
    
    UIGraphicsEndImageContext()
    
    return (positive, negative)
}

let imageMasked = maskImage(leImage!, withBezier: leBezierMask)

XCPCaptureValue("image masked", imageMasked.positive)
XCPCaptureValue("image masked", imageMasked.negative)
