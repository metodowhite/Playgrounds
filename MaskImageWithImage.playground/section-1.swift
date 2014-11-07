// Playground - noun: a place where people can play

import UIKit
import XCPlayground

let leImage = UIImage(named: "originalImage.jpg")
let leMask = UIImage(named: "maskImage")

func maskImage(image: UIImage, withImage mask: UIImage) -> UIImage {
    let origin = CGPoint(x: 0, y: 0)
    let origin2 = CGPoint(x: -450, y: -400)
    let rect = CGRect(origin: origin, size: mask.size)

    UIGraphicsBeginImageContextWithOptions(mask.size, false, image.scale)
    
    CGContextClipToMask(UIGraphicsGetCurrentContext(), rect, mask.CGImage)
    leImage?.drawInRect(CGRect(origin: origin2, size: image.size))
    
    return UIGraphicsGetImageFromCurrentImageContext()
}


extension UIImage {
    func invertImage() -> UIImage {
        let origin = CGPoint(x: 0, y: 0)
        let rect = CGRect(origin: origin, size: self.size)
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        self.drawInRect(rect)
        CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeSourceOut);
        CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), UIColor.blackColor().CGColor);
        CGContextFillRect(UIGraphicsGetCurrentContext(), rect);
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}


let imageMasked = maskImage(leImage!, withImage: leMask!)
let imageMaskedInverted = maskImage(leImage!, withImage: leMask!.invertImage())

XCPCaptureValue("image masked", imageMasked)
XCPCaptureValue("image masked", imageMaskedInverted)
