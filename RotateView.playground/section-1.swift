// Playground - noun: a place where people can play

//(Nov 8 2014) not possible due actual limitations o Playgrounds :-(
//http://rshankar.com/xcode-6-and-playground/

import UIKit
import XCPlayground

let leView = UIView(frame: CGRect(x: 10, y: 10, width: 200, height: 200))
leView.backgroundColor = UIColor.redColor()

UIView.animateWithDuration(1, animations: { () -> Void in
    leView.transform = CGAffineTransformMakeRotation(CGFloat(1.3 * M_2_PI))
})


XCPShowView("leView", leView)