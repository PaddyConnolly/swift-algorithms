//
//  Sorting.swift
//  StandardAlgorithms
//
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(array: [Int]) -> [Int] {
        var array = array
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
    
    func mergeSort(array: [Int]) -> [Int] {
        // Return if length is 1. Already ordered
        if array.count == 1 {
            return array
        }
        let middle = array.count / 2
        // Recursively sort
        let left = mergeSort(array: Array(array[0..<middle]))
        let right = mergeSort(array: Array(array[middle..<array.count]))
        
        return merge(left: left, right: right)
        
    }
    
    func quickSort(array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        } else {
            let pivot = array[0]
            var left = [Int]()
            var right = [Int]()
            for i in 1..<array.count {
                let item = array[i]
                if item <= pivot {
                    left.append(item)
                } else {
                    right.append(item)
                }
            }
            var sortedArray = [Int]()
            sortedArray.append(contentsOf: quickSort(array: left))
            sortedArray.append(pivot)
            sortedArray.append(contentsOf: quickSort(array: right))
            return sortedArray
        }}
    
    func insertionSort(array: [Int]) -> [Int] {
        var array = array
        for i in 1..<array.count {
            var j = i
            while j > 0 && array[j] < array[j-1] {
                let temp = array[j]
                array[j] = array[j-1]
                array[j-1] = temp
                j -= 1
            }
        }
        
        return array
        
    }
    
}
    

