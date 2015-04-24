//
//  ViewController.swift
//  April24Session1
//
//  Created by Hasan Soysal on 24/04/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    var names : Array<String> = []
    var numbers : Array<Int> = []
    @IBOutlet weak var tableview : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["Hasan", "Yasemin", "Ayşe", "John"]
        numbers = [1,2,45,65,654,645,32]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: TableView Delegate & Datasource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2;
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        if section == 0
        {
            return names.count
        }
        else if section == 1
        {
            return numbers.count
        }
        return 0
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        if indexPath.section == 0
        {
            cell.textLabel?.text = names[indexPath.row]
        }
        else if indexPath.section == 1
        {
            cell.textLabel?.text = "\(numbers[indexPath.row])"
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        UIAlertView(title: "Hello", message: "\(indexPath.row). sıradaki row seçildi", delegate: nil, cancelButtonTitle: "Tamam").show()
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "Names"
        }
        else if section == 1
        {
            return "Numbers"
        }
        return ""
    }
    

    
    

}








