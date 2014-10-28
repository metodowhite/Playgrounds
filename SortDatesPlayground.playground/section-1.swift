// Playground - noun: a place where people can play

import UIKit

var dates: [NSDate] = []

for randomDate in 1...7 {
    let randomInterval =  NSTimeInterval(Int(rand()) % 60_000_000)
    randomInterval
    
    let randomDate = NSDate().dateByAddingTimeInterval(randomInterval)
    dates.append(randomDate)
}

dates

let sortedResults = sorted(dates, {
    $0.compare($1) == NSComparisonResult.OrderedDescending
})

sortedResults