//
//  ProgrammersController.swift
//  Secret Santa
//
//  Created by Diego Aguirre on 3/11/16.
//  Copyright © 2016 home. All rights reserved.
//

import Foundation

class ProgrammersController {
    static let sharedController = ProgrammersController()
    
    var programmers: [Programmers]
    
    init() {
        self.programmers = []
    }
    
    
    func addProgrammer(programmer: Programmers) {
        
        programmers.append(programmer)
        
    }
    
    func removeProgrammer(programmer: Programmers) {
        
        if let programmerIndex = programmers.indexOf(programmer) {
            programmers.removeAtIndex(programmerIndex)
            
        }
    }
    
    func updateWithProgrammer(programmer: [Programmers]) {
        self.programmers = programmer
        
    }
}