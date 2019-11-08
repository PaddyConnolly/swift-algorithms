//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Connolly, Patrick (IRG) on 08/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {


    func testLinearSearchCanFindValueInSortedArrayOfIntegers() {
        //arrange
        let data = [1,2,3,4,5,6,7,8,10]
        let target = 6
        let searching = Searching()
        //act
        let actual = searching.linearSearch(array: data, target: target)
        //assert
        XCTAssertTrue(actual)

    }
    
    func testLinearSearchCanFindValueFromManyArraysOfIntegers() {
        //arrange
        let testCases = [(input: [10, 3, 30, 2, 5], target: 2),(input: [4, 3, 15, 2, 1, 6], target: 15)]
        let searching = Searching()
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch(array: testCase.input, target: testCase.target )
            XCTAssertTrue(actual)
        }

    }
    
    func testLinearSearchCanReturnFalseWhenTargetNotFound() {
        //arrange
        let testCases = [(input: [10, 3, 30, 4, 5], target: 2),(input: [4, 3, 15, 2, 1, 6], target: 12)]
        let searching = Searching()
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch(array: testCase.input, target: testCase.target )
            XCTAssertFalse(actual)
        }
        
    }
    
    func testLinearSearchPerformanceWithArrayOf5Integers() {
        //arrange
        let searching = Searching()
        var data = [Int]()
        
        for _ in 0..<5 {
            data.append(Int.random(in: 0...100))
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.linearSearch(array: data, target: target)
        }
    }
    
    func testLinearSearchPerformanceWithArrayOf50Integers() {
        //arrangea
        let searching = Searching()
        var data = [Int]()
        
        for _ in 0..<50 {
            data.append(Int.random(in: 0...100))
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.linearSearch(array: data, target: target)
        }
    }
    
    func testLinearSearchPerformanceWithArrayOf500Integers() {
        //arrange
        let searching = Searching()
        var data = [Int]()
        
        for _ in 0..<500 {
            data.append(Int.random(in: 0...100))
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.linearSearch(array: data, target: target)
        }
    }
    
    func testBinarySearchFindsValueinSortedArrayOfIntegers() {
        //arrange
        let data = [1,2,3,4,5,6,7,8,10]
        let target = 6
        let searching = Searching()
        //act
        let actual = searching.binarySearch(sortedArray: data, target: target)
        //assert
        XCTAssertTrue(actual)

    }
    
    func testBinarySearchCanFindValueFromManySortedArraysOfIntegers() {
        //arrange
        let testCases = [(input: [1,3,5,7,9], target: 3),(input: [2,4,6,8,10], target: 8)]
        let searching = Searching()
        //act
        //assert
        for testCase in testCases {
            let actual = searching.binarySearch(sortedArray: testCase.input, target: testCase.target )
            XCTAssertTrue(actual)
        }

    }
    
    func testBinarySearchCanReturnFalseWhenTargetNotFound() {
        //arrange
        let testCases = [(input: [1,3,5,7,9], target: 2),(input: [2,4,6,8,10], target: 12)]
        let searching = Searching()
        //act
        //assert
        for testCase in testCases {
            let actual = searching.binarySearch(sortedArray: testCase.input, target: testCase.target )
            XCTAssertFalse(actual)
        }
        
    }

    func testBinarySearchPerformanceWithArrayOf5Integers() {
        //arrange
        let searching = Searching()
        var data = [Int]()
        
        for i in 0..<5 {
            data.append(i+1)
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.binarySearch(sortedArray: data, target: target)
        }
    }

    func testBinarySearchPerformanceWithArrayOf50Integers() {
        //arrangea
        let searching = Searching()
        var data = [Int]()
        
        for i in 0..<50 {
            data.append(i+1)
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.binarySearch(sortedArray: data, target: target)
        }
    }

    func testBinarySearchPerformanceWithArrayOf500Integers() {
        //arrange
        let searching = Searching()
        var data = [Int]()
        
        for i in 0..<500 {
            data.append(i+1)
        }
        let target = data[Int.random(in: 0..<data.count)]
        
        //act
        measure {
            _ = searching.binarySearch(sortedArray: data, target: target)
        }
    }


}
