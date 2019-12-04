
/*
 Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus 1 or 2. She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.
 */


func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    var currentCloudIndex = 0
    
    while currentCloudIndex < c.count - 1 {
        
        if (c.count-currentCloudIndex > 2) {
            if c[currentCloudIndex + 2] == 0 {
                currentCloudIndex += 2
                jumps += 1
                continue
            }
        }
        if c[currentCloudIndex + 1] == 0 {
            currentCloudIndex += 1
            jumps += 1
        }
    
    }

    return jumps
}


jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])

