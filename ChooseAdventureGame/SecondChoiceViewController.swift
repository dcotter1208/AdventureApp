//
//  SecondChoiceViewController.swift
//  ChooseAdventureGame
//
//  Created by Donovan Cotter on 10/12/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class SecondChoiceViewController: UITableViewController {

    var secondChoices: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondChoices.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("secondViewCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = secondChoices[indexPath.row]
        
        return cell
    }

}
