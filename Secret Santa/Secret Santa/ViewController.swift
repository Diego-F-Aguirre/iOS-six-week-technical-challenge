//
//  ViewController.swift
//  Secret Santa
//
//  Created by Diego Aguirre on 3/11/16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var yourNameTextfield: UITextField!
    @IBOutlet weak var yourNameLabel: UILabel!
    @IBOutlet weak var yourPartnerLabel: UILabel!
    
    var programmer: Programmers?
    
    
//    let programmers = Programmers()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func pairButtonPressed(sender: AnyObject) {
        
        yourNameLabel.text = yourNameTextfield.text
        
//        yourPartnerLabel.text = Programmers.init().programmersArray.shuffle().first
    }
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        
        let newProgrammer = Programmers(name: yourNameTextfield.text!)
        
        ProgrammersController.sharedController.addProgrammer(newProgrammer)
        
        
    }
    
 
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        yourNameTextfield.resignFirstResponder()
        return true
    }
    
    
    
    // MARK: - Navigation
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toList" {
            
            let indexPath = UITableView.indexPathForCell
            
            let programmer = ProgrammersController.sharedController.programmers[indexPath]
            
            ProgrammersController.sharedController.updateWithProgrammer(programmer)
            
            
//            if let programmerTableView = segue.destinationViewController as? ProgrammersTableViewController {
//                programmerTableView.updateWithProgrammer(<#T##programmer: Programmers##Programmers#>)
//            }
        }
    }
    


}






extension CollectionType {
    /// Return a copy of `self` with its elements shuffled
    func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}


