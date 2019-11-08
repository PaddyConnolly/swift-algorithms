//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Connolly, Patrick (IRG) on 08/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import XCTest

class SearchingTest: XCTestCase {


    func testLinearSearchCanReturnValueInSortedArrayOfIntegers() {
        //arrange
        let data = [1,2,3,4,5,6,7,8,10]
        let target = 6
        let searching = Searching()
        //act
        let actual = searching.linearSearch(sortedArray: data, target: target)
        //assert
        XCTAssertTrue(actual)

    }
    
    func testLinearSearchCanFindValueFromManySortedArraysOfIntegers() {
        //arrange
        let testCases = [(input: [10, 3, 30, 2, 5], target: 2),(input: [4, 3, 15, 2, 1, 6], target: 15)]
        let searching = Searching()
        //act
        //assert
        for testCase in testCases {
            let actual = searching.linearSearch(sortedArray: testCase.input, target: testCase.target )
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
            let actual = searching.linearSearch(sortedArray: testCase.input, target: testCase.target )
            XCTAssertFalse(actual)
        }
        
    }

}
