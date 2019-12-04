/*
 Lilah has a string, s, of lowercase English letters that she repeated infinitely many times.
 Given an integer, n, find and print the number of letter a's in the first  letters of Lilah's infinite string.
 */


func repeatedString(s: String, n: Int) -> Int {
    var occurances = 0
    let multiplier = n / s.count
    var remainder = n % s.count
    let myArray = Array(s)
    
    if s.count == 1 {
        if s == "a" {
            return n
        } else {
            return 0
        }
    }
    
    var myString = String(repeating: s, count: multiplier)
    print(myString)
    
    while remainder != 0 {
        myString.append(myArray[remainder-1])
        remainder -= 1
        print(myString)
    }

    occurances = myString.filter({ $0 == "a"}).count

    return occurances
}

print(repeatedString(s: "a", n: 1000000000000))



