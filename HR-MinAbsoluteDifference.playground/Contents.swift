import CoreFoundation

func minimumAbsoluteDifference(arr: [Int]) -> Int {
    let startTime = CFAbsoluteTimeGetCurrent()
    var minDifference: Int? = nil
    for (index, number) in arr.enumerated() {

        for j in arr[index+1..<arr.count] {
            
            if number == j { return 0 }

            let difference = abs(number - j)

            if minDifference == nil {
                minDifference = difference
            } else if difference < minDifference! {
                minDifference = difference
            }

        }

    }
    let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime
    print(elapsedTime)
    return minDifference!
}

minimumAbsoluteDifference(arr: [3, -7, 0])
minimumAbsoluteDifference(arr: [-59, -36, -13, 1, -53, -92, -2, -96, -54, 75])



func minimumAbsoluteDifference2(arr: [Int]) -> Int {
    let startTime = CFAbsoluteTimeGetCurrent()
    var minDifference: Int? = nil
    
    let sortedArray = arr.sorted()

    for (index, number) in sortedArray[0..<sortedArray.count-1].enumerated() {
        let difference = abs(number - sortedArray[index+1])
        if number == sortedArray[index+1] {
            return 0
        }
        if minDifference == nil {
            minDifference = difference
        } else if difference < minDifference! {
            minDifference = difference
        }
    }
    
    
    
    let elapsedTime = CFAbsoluteTimeGetCurrent() - startTime
    print(elapsedTime)
    return minDifference!
}

minimumAbsoluteDifference2(arr: [3, -7, 0])
minimumAbsoluteDifference2(arr: [-59, -36, -13, 1, -53, -92, -2, -96, -54, 75])
