//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Connolly, Patrick (IRG) on 08/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch(array: [Int],target: Int) -> Bool {
        var i = 0
        var found = false
        while found == false {
            while i < array.count {
                if array[i] == target {
                    found = true
                    return found
                } else {
                    i += 1
                }
            }
            return found
        }}
    
    func binarySearch(sortedArray: [Int], target: Int) -> Bool {
        var lowerBound = 0
        var upperBound = sortedArray.count
        var found = false
        while lowerBound < upperBound {
            let middle = lowerBound + (upperBound - lowerBound) / 2
            if sortedArray[middle] == target {
                found = true
                return found
            } else if sortedArray[middle] < target {
                lowerBound = middle + 1
            } else {
                upperBound = middle
            }
        }
        
        return found
    }
    
}
