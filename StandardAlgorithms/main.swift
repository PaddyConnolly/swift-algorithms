//
//  main.swift
//  StandardAlgorithms
//
//  Created by Connolly, Patrick (IRG) on 05/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

func displayAlgorithms() {
    let testCase = [57,78,45,67,13,62,23,93,42,8]
    let binarySearchTestCase = [54,67,13,78,98,43,23,46,57,87]
    let target = 13
    let sorting = Sorting()
    let searching = Searching()
    
    print("""
    
    Bubble Sort
        
    Bubble Sort goes through an array, and swaps values if they are in the wrong order, it usually completes multiple passes until the list is sorted.
    Big O notation:
    Best Case: O(n) comparisons, O(1) swaps
    Average Case: O(n^2) comparisons, O(n^2) swaps
    Worst Case: O(n^2) comparisons, O(n^2) swaps
    Worst Case Space Complexity: O(1)

    \(sorting.bubbleSort(array: testCase))
    
    Merge Sort
        
    Merge Sort halves arrays until they are split into arrays of length 1, and then merges them back togther in the correct order.
    Big O notation:
    Best Case: O(n log n)
    Average Case: O(n log n)
    Worst Case: O(n log n)
    Worst Case Space Complexity: O(n)
        
    \(sorting.mergeSort(array: testCase))
    
    Quick Sort
        
    Quick Sort split an array into a pivot (usually the first value), a high array, and a low array. It then recursively sorts the two arrays in this way, and adds them back
    together at the end.
    Big O notation:
    Best Case: O(n log n)
    Average Case: O(n log n)
    Worst Case: O(n^2)
    Worst Case Space Complexity: O(n)
    
    \(sorting.quickSort(array: testCase))
    
    Insertion Sort
        
    Insertion Sort takes the first value of an array and adds it to a sorted array, then it goes through the unsorted array and
    adds the remaing values to the sorted array on either side of the first value, depending on their value
    Big O notation:
    Best Case: O(n)
    Average Case: O(n^2)
    Worst Case: O(n^2)
    Worst Case Space Complexity: O(n)
    
    \(sorting.insertionSort(array: testCase))
    """)
    
    print("""

    Linear Search

    Linear Search goes from the first to the last value of an array and compares each value to
    the target value, until it finds it. If no value is found, it either returns nil or value not found .
    Linear search works on unsorted lists.
    Big O notation:
    Best Case: O(1)
    Average Case: O(n)
    Worst Case: O(n)
    Worst Case Space Complexity: O(1)

    """)
    if searching.linearSearch(array: testCase, target: target) == true {
        print("Value found!")
    } else {
        print("Value not found")
    }
    
    print("""

    Binary Search

    Binary Search goes from the middle of an array a compares the value of it to the target, if it is the target it gets returned, otherwise it passes again.
    If the middle is less than the target, the lower half of the list is discarded, otherwise the upper half is discarded.
    This is repeated until the value is found
    Binary search search only works on sorted lists.
    Big O notation:
    Best Case: O(1)
    Average Case: O(log n)
    Worst Case: O(log n)
    Worst Case Space Complexity: O(1)

    """)
    
    if searching.binarySearch(sortedArray: binarySearchTestCase, target: target) == true {
        print("Value found!")
    } else {
        print("Value not found")
    }
    
}
displayAlgorithms()
