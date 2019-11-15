//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Connolly, Patrick (IRG) on 15/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumOfFirstAndLastWithIntegerArrayReturnsSumOfFirstAndLastItems() {
        //arrange
        let inputData = [1,2,3,4,5,6,7,8,9,10]
        let expected = 11
        let unknown = Unknown()
        
        //act
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        
        //assert
        XCTAssertEqual(actual, expected)
        
    }
    
    func testSumOfFirstAndLastWithManyIntegerArraysReturnsSumOfFirstAndLastItems() {
        //arrange
        let inputData = [(input: [1,3,5,7,9], expected: 10), (input: [2,4,6,8,0], expected: 2)]
        let unknown = Unknown()
        
        //act
        //assert
        for testCase in inputData {
            let actual = unknown.sumOfFirstAndLast(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testSumOfFirstAndLastWithIntegerArrayOfSizeZeroReturnsZero() {
        //arrange
        let inputData = [Int]()
        let unknown = Unknown()
        let expected = 0
        
        //act
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testSumOfFirstAndLastWithIntegerArrayOfSizeOneReturnsTwoTimesValue() {
        //arrange
        let inputData = [6]
        let unknown = Unknown()
        let expected = 12
        
        //act
        let actual = unknown.sumOfFirstAndLast(array: inputData)
        
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testSumOfFirstAndLastWithManyIntegerArraysOfSizeOneReturnsTwoTimesValue() {
        //arrange
        let inputData = [(input: [1], expected: 2), (input: [8], expected: 16)]
        let unknown = Unknown()
        
        //act
        //assert
        for testCase in inputData {
            let actual = unknown.sumOfFirstAndLast(array: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    
    }

    

}
