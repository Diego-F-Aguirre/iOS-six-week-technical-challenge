//
//  Programmers.swift
//  Secret Santa
//
//  Created by Diego Aguirre on 3/11/16.
//  Copyright © 2016 home. All rights reserved.
//

import Foundation


class Programmers: Equatable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

func == (lhs: Programmers, rhs: Programmers) -> Bool {
    return (lhs.name == rhs.name)
}