//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Connolly, Patrick (IRG) on 15/11/2019.
//  Copyright © 2019 Connolly, Patrick (IRG). All rights reserved.
//

import Foundation

class Unknown {
    
    func sumOfFirstAndLast(array: [Int]) -> Int {
        if array.count == 0 {
            return 0
        } else {
        let end = array[array.count - 1]
        let start = array[0]
        
        return start + end
        }
    }
        
}
