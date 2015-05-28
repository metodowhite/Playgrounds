// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let teamImage: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 380, height: 300))

let imageTest = UIImage(named: "Hypnotoad")

teamImage.setTitle("HypnotoadTitle", forState: .Normal)
teamImage.setBackgroundImage(imageTest, forState: .Normal)

teamImage