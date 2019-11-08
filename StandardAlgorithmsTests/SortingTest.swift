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
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
        
    }

    func testBubbleSortWithManyIntegerArraysReturnsSortedArrays() {
        let testCases = [(input: [10, 3, 30, 2, 5], expected: [2, 3, 5, 10, 30]),
                         (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15])]
        let sorting = Sorting()
        
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(data: testCase.input)
            
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
            _ = sorting.bubbleSort(data: data)
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
            _ = sorting.bubbleSort(data: data)
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
            _ = sorting.bubbleSort(data: data)
        }
        
    }
    

    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let data = [7,9,1,4,3,5]
        let expected = [1,3,4,5,7,9]
        let sorting = Sorting()
        //act
        let actual = sorting.mergeSort(data: data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testMergeSortWithManyIntegerArraysReturnsSortedArrays() {
        let testCases = [(input: [10, 3, 30, 2, 5], expected: [2, 3, 5, 10, 30]),
                         (input: [4, 3, 15, 2, 1, 6], expected: [1, 2, 3, 4, 6, 15])]
        let sorting = Sorting()
        
        //act
        //assert
        
        for testCase in testCases {
            let actual = sorting.mergeSort(data: testCase.input)
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
            _ = sorting.mergeSort(data: data)
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
            _ = sorting.mergeSort(data: data)
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
            _ = sorting.mergeSort(data: data)
        }
        
    }
    
}
