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
    
    
    var programmerArray = ["Retika","Jake Hardey","Cameron","Michael Mecham","Youcef","Daniel","Pierre","Dillon Slade","Kaytee","Alex","Parker","Aaron","Gibson","Brock","James","Nathan","Josh","Taylor","Caleb","Emily","Krissy"]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func pairButtonPressed(sender: AnyObject) {
        
        yourNameLabel.text = yourNameTextfield.text
        
        
        yourPartnerLabel.text = programmerArray.shuffle().first


    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        yourNameTextfield.resignFirstResponder()
        return true
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


