//
//  Sorting.swift
//  StandardAlgorithms
//
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        for _ in 0..<array.count {
            for j in 1..<array.count {
           if array[j] < array[j-1] {
                let temp = array[j-1]
                array[j-1] = array[j]
                array[j] = temp
            }
        }
                
                
            }
        
        return array
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        // Start each side at 0
        var countLeft = 0
        var countRight = 0
        
        // Declare an empty array where the ordered list will go
        var completedArray = [Int]()
        
        // Merge
        while countLeft < left.count && countRight < right.count {
            if left[countLeft] < right[countRight]  {
                completedArray.append(left[countLeft])
                countLeft += 1
            } else if left[countLeft] > right[countRight] {
                completedArray.append(right[countRight])
                countRight += 1
            } else {
                completedArray.append(left[countLeft])
                countLeft += 1
                completedArray.append(right[countRight])
                countRight += 1
            }
        }
        
        // Even out lists
        while countLeft < left.count {
            completedArray.append(left[countLeft])
            countLeft += 1
        }
        
        while countRight < right.count {
            completedArray.append(right[countRight])
            countRight += 1
        }
        // Return ordered array
        return completedArray
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        let array = data
        // Return if length is 1. Already ordered
        if array.count == 1 {
            return array
        }
        let middle = array.count / 2
        // Recursively sort
        let left = mergeSort(data: Array(array[0..<middle]))
        let right = mergeSort(data: Array(array[middle..<array.count]))
        
        return merge(left: left, right: right)
        
    }
}
    

