//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Connolly, Patrick (IRG) on 05/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [6, 3, 2, 4]
        let expected = [2, 3, 4, 6]
        let sorting = Sorting()
        //act
        let actual = sorting.bubbleSort(array: data)
        //assert
        XCTAssertEqual(actual, expected)
        
    }

    func testBubbleSortWithManyIntegerArraysReturnsSortedArrays() {
        let testCases = [(input: [10, 3, 30, 2, 5], expected: [2, 3, 5, 10, 30]),
                         (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15])]
        let sorting = Sorting()
        
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(array: testCase.input)
            
        //assert
        

            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testBubbleSortPerformanceWithArrayOf5Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<5 {
            data.append(Int.random(in: 1...100))
        }
            
        //act
        measure {
            _ = sorting.bubbleSort(array: data)
        }
        
    }

    func testBubbleSortPerformanceWithArrayOf50Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<50 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.bubbleSort(array: data)
        }
                
    }

    func testBubbleSortPerformanceWithArrayOf500Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<500 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.bubbleSort(array: data)
        }
        
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [7,9,1,4,3,5]
        let expected = [1,3,4,5,7,9]
        let sorting = Sorting()
        //act
        let actual = sorting.mergeSort(array: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testMergeSortWithManyIntegerArraysReturnsSortedArrays() {
        //arrange
        let testCases = [(input: [10, 3, 30, 2, 5], expected: [2, 3, 5, 10, 30]),
                         (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15])]
        let sorting = Sorting()
        
        //act
        //assert
        
        for testCase in testCases {
            let actual = sorting.mergeSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    
    }
    
    func testMergeSortPerformanceWithArrayOf5Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<5 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.mergeSort(array: data)
        }
        
    }

    func testMergeSortPerformanceWithArrayOf50Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<50 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.mergeSort(array: data)
        }
                
    }

    func testMergeSortPerformanceWithArrayOf500Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<500 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.mergeSort(array: data)
        }
        
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [9,7,5,3,1]
        let sorting = Sorting()
        let expected = [1,3,5,7,9]
        
        //act
        let actual = sorting.quickSort(array: data)
        
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testQuickSortWithManyIntegerArraysReturnsSortedArrays() {
        //arrange
        let testCases = [(input: [10, 3, 30, 2, 5], expected: [2, 3, 5, 10, 30]),
                             (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15])]
        let sorting = Sorting()
            
        //act
        //assert
            
        for testCase in testCases {
            let actual = sorting.quickSort(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
    }
    
    func testQuickSortPerformanceWithArrayOf5Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<5 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.quickSort(array: data)
        }
        
    }

    func testQuickSortPerformanceWithArrayOf50Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<50 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.quickSort(array: data)
        }
                
    }

    func testQuickSortPerformanceWithArrayOf500Integers() {
        //arrange
        let sorting = Sorting()
        var data = [Int]()
        
        for _ in 0..<500 {
            data.append(Int.random(in: 1...100))
        }
        
        //act
        measure {
            _ = sorting.quickSort(array: data)
        }
        
    }
    
}
