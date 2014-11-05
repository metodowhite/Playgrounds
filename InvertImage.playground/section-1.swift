// Playground - noun: a place where people can play

import UIKit
import XCPlayground

let positiveImage = UIImage(named: "imageTexture")

UIGraphicsBeginImageContext(positiveImage!.size);
CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeCopy);

let rect = CGRect(x: 0, y: 0, width: positiveImage!.size.width, height: positiveImage!.size.height)

positiveImage?.drawInRect(rect)

CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeSourceOut);
CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), UIColor.blackColor().CGColor);
CGContextFillRect(UIGraphicsGetCurrentContext(), rect);

XCPCaptureValue("negative image", UIGraphicsGetImageFromCurrentImageContext())
let negativeImage = UIGraphicsGetImageFromCurrentImageContext()

UIGraphicsEndImageContext();


//–– Test with extra size in result image

let rect2 = CGRect(x: 800, y: 500, width: positiveImage!.size.width, height: positiveImage!.size.height)
let rect3 = CGRect(x: 0, y: 0, width: 2000, height: 2000)

UIGraphicsBeginImageContext(rect3.size)

positiveImage?.drawInRect(rect2)

CGContextSetBlendMode(UIGraphicsGetCurrentContext(), kCGBlendModeSourceOut);

CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(), UIColor.blackColor().CGColor);
CGContextFillRect(UIGraphicsGetCurrentContext(), rect3);

XCPCaptureValue("image with extra size", UIGraphicsGetImageFromCurrentImageContext())

