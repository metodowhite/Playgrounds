// Playground - noun: a place where people can play

import UIKit


func drawOutline(#image:UIImage, color:UIColor) -> UIImage {
   
    let imgWidth = image.size.width
    let imgHeight = image.size.height
	let point = CGPoint(x: 420, y: 320)

	let newImageKoef:CGFloat = 1.1
    
    let outlinedImageRect = CGRect(x: 0.0, y: 0.0, width: image.size.width * newImageKoef, height: image.size.height * newImageKoef)
    
    let imageRect = CGRect(x: image.size.width * (newImageKoef - 1) * 0.5, y: image.size.height * (newImageKoef - 1) * 0.5, width: image.size.width, height: image.size.height)
    
    UIGraphicsBeginImageContextWithOptions(outlinedImageRect.size, false, newImageKoef)
    
    image.drawInRect(outlinedImageRect)
    
    let context = UIGraphicsGetCurrentContext()
    CGContextSetBlendMode(context, kCGBlendModeSourceIn)
    
    CGContextSetFillColorWithColor(context, color.CGColor)
    CGContextFillRect(context, outlinedImageRect)
    image.drawInRect(imageRect)
    

    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

	return newImage
}

let imageIn = UIImage(named: "Hypnotoad.png")
let imageOut = drawOutline(image: imageIn!, UIColor.blackColor())
