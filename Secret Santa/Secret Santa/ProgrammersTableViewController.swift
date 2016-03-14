//
//  ProgrammersTableViewController.swift
//  Secret Santa
//
//  Created by Diego Aguirre on 3/11/16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {
    
    var programmer: Programmers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        tableView.reloadData()
    }
    
    func updateWithProgrammer(programmer: Programmers) {
        self.programmer = programmer
        
    }
    
    
    
    // MARK: - Table view data source
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ProgrammersController.sharedController.programmers.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let programmer = ProgrammersController.sharedController.programmers[indexPath.row]
        
        cell.textLabel?.text = programmer.name
        
        return cell
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            let programmer = ProgrammersController.sharedController.programmers[indexPath.row]
            
            ProgrammersController.sharedController.removeProgrammer(programmer)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }
        
        
    }
}
