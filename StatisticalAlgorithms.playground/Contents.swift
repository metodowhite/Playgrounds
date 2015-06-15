

// Find mean (media)

func mean(xs: Int ...) -> Int {
    let sum = xs.reduce(0, combine: +)
    return sum/xs.count
}

mean(1, 2, 3, 9)


// Find median (mediana)

func median(xs: Int ...) -> Double {
    let s = sorted(xs)
    if s.count % 2 == 1 {
        return Double(s[s.count/2])
    }
    else {
        return Double(s[s.count/2-1]+s[s.count/2])/2
    }
}

median(1, 2, 3)
median(1, 2, 3, 4)
median(1, 2, 3, 4, 5)


// Find mode (moda)

func mode(xs: Int ...) -> [Int] {
    let d = xs.reduce([Int: Int]()) { r, x in
        var r = r
        if let _ = r[x] {
            r[x] = r[x]! + 1
            return r
        }
        else {
            r[x] = 1
            return r
        }
    }
    let max = reduce(d, 0) { r, x in
        r > x.1 ? r : x.1
    }
    return reduce(d, [Int]()) { r, x in
        var xs = r
        if x.1 == max {
            xs.append(x.0)
            return xs
        }
        return r
    }
}

mode(1, 4, 4, 4, 6, 6)
mode(1, 4, 4, 4, 6, 7, 7, 7)


