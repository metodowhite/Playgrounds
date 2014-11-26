// Playground - noun: a place where people can play

//(Nov 8 2014) not possible due actual limitations o Playgrounds :-(
//http://rshankar.com/xcode-6-and-playground/

import UIKit
import XCPlayground

//https://developer.apple.com/library/ios/releasenotes/DeveloperTools/RN-Xcode/Chapters/xc6_release_notes.html
//iOS Playgrounds now support displaying animated views with the XCPShowView() XCPlayground API. This capability is disabled by default; it can be enabled by checking the "Run in Full Simulator" setting in the Playground Settings inspector.
//When the capability is enabled, running the playground causes the iOS Simulator application to launch and run the playground in the full simulator. This capability is also required for other functionality that fails without the full simulator, such as NSURLConnection http requests. Running in the full iOS Simulator is slower than running in the default mode. (18282806)


let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
containerView.backgroundColor = UIColor.grayColor()

let aView = UIView(frame: CGRect(x: 10, y: 10, width: 200, height: 200))
aView.backgroundColor = UIColor.darkGrayColor()

containerView.addSubview(aView)


UIView.animateWithDuration(1, animations: { () -> Void in
    aView.transform = CGAffineTransformMakeRotation(CGFloat(1.3 * M_PI))
})


XCPShowView("containerView", containerView)
