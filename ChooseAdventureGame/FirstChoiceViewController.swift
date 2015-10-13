//
//  FirstChoiceViewController.swift
//  ChooseAdventureGame
//
//  Created by Donovan Cotter on 10/12/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class FirstChoiceViewController: UITableViewController {
    
    
    var firstChoices = [String]()
    
    var secondChoices = [SecondChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstChoices = ["Run Toward Mountain", "Enter the car", "Hop on the horse"]
        
        secondChoices = [SecondChoice(choices: ["Jump", "Run", "Hide"]), SecondChoice(choices: ["Swim", "Drive Boat", "Jet Ski"]), SecondChoice(choices: ["Climb Wall", "Sprint Home", "Ice Skate"])]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstChoices.count
    }
    
override     
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("firstViewCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = firstChoices[indexPath.row]
        
        return cell
    }
    

    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
            //This method was giving me a problem because I didn't implement the UITableViewController protocol. Instead I just had the data source and delegate in it.
            let indexPath = tableView.indexPathForSelectedRow
            let vc = segue.destinationViewController as! SecondChoiceViewController
            var secondChoiceArray: SecondChoice
            secondChoiceArray = secondChoices[indexPath!.row]
            
            vc.secondChoices = secondChoiceArray.choices
        
        }
    
    

}