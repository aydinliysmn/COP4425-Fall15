//
//  ViewController.swift
//  ClosureExample
//
//  Created by Hasan Soysal on 06/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
            countDown(10, closure: { () -> () in
                println("Happy Birthday")
            })
        
        runAfter3seconds("Hasan", { (name) -> () in
            println("name : \(name)")
        })
        
        
        UIView.animateWithDuration(5, animations: { () -> Void in
            self.view.backgroundColor = UIColor.redColor()
        }) { (completed) -> Void in
            println("Hey, it runs after the animation")
        }
        
        
    }
    func runAfter3seconds(name : String, closure: (String)->())
    {
        var when = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
        println("Line 1")
        dispatch_after(when, dispatch_get_global_queue(0, 0)) { () -> Void in
            closure ("Hello \(name)")
        }
        println("Line 2")
    }
    
  
    
    func countDown (number: Int, closure : ()-> ())
    {
        var myNumber = number
        while (myNumber > 0)
        {
            println("\(myNumber)")
            myNumber--
        }
        closure()
    }
    
}

