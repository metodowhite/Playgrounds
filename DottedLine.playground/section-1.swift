// Playground - noun: a place where people can play

import UIKit

import UIKit
import XCPlayground

let path = UIBezierPath()
path.moveToPoint(CGPointMake(10, 10))
path.addLineToPoint(CGPointMake(290, 10))
path.lineWidth = 5
let dashes: [CGFloat] = [ path.lineWidth * 0, path.lineWidth * 2 ]
path.setLineDash(dashes, count: dashes.count, phase: 0)
path.lineCapStyle = kCGLineCapRound

UIGraphicsBeginImageContextWithOptions(CGSizeMake(300, 20), false, 2)
path.stroke()
XCPCaptureValue("image", UIGraphicsGetImageFromCurrentImageContext())
UIGraphicsEndImageContext()

