/*
 John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 */

let array = [1, 2, 1, 2, 1, 3, 2]


func sockMerchant(n: Int, ar: [Int]) -> Int {
    var numberOfPairs = 0
    
    let mappedNumbers = ar.map { ($0, 1) }
    
    let counts = Dictionary(mappedNumbers, uniquingKeysWith: +)
    
    for (number, count) in counts {
        let pairs = Int(count / 2)
        numberOfPairs += pairs
    }

    return numberOfPairs
}


print(sockMerchant(n: array.count, ar: array))

