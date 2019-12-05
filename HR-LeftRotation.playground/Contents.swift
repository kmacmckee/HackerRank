import CoreFoundation

func rotLeft(a: [Int], d: Int) -> [Int] {
    let startTime = CFAbsoluteTimeGetCurrent()
    var rotations = d
    var array = a
    while rotations != 0 {
        let first = array.removeFirst()
        array.append(first)
        rotations -= 1
    }
    let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime
    print(elapsedTime)
    return array
}


print(rotLeft(a: [1, 2, 3, 4, 5], d: 4))

print(rotLeft(a: [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51], d: 10))

print(rotLeft(a: [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97], d: 13))


func rotLeft2(a: [Int], d: Int) -> [Int] {
    let startTime = CFAbsoluteTimeGetCurrent()
    var array = a
    var movedNumbers: [Int] = []
    array.removeSubrange(0..<d)
    
    for i in 0..<d {
        movedNumbers.append(a[i])
    }
    array.append(contentsOf: movedNumbers)
    
    let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime
    print(elapsedTime)
    return array
}

print(rotLeft2(a: [1, 2, 3, 4, 5], d: 4))

print(rotLeft2(a: [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51], d: 10))

print(rotLeft2(a: [33, 47, 70, 37, 8, 53, 13, 93, 71, 72, 51, 100, 60, 87, 97], d: 13))
