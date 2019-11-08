//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Connolly, Patrick (IRG) on 08/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

class Searching {
    
    func linearSearch(sortedArray: [Int],target: Int) -> Bool {
        let array = sortedArray
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
        }
        
    }
    
}
