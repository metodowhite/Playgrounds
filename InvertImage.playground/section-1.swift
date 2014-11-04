// Playground - noun: a place where people can play

import UIKit

let positiveImage = UIImage(named: "imageTexture")

UIGraphicsBeginImageContext(positiveImage!.size);
CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeCopy);

let rect = CGRect(x: 0, y: 0, width: positiveImage!.size.width, height: positiveImage!.size.height)

positiveImage?.drawInRect(rect)

CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeSourceOut);
CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), UIColor.blackColor().CGColor);
CGContextFillRect(UIGraphicsGetCurrentContext(), rect);

let returnImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();