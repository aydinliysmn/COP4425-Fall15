//
//  ViewController.swift
//  April10Session1
//
//  Created by Hasan Soysal on 10/04/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var product1 : ProductModel = ProductModel();
    var product2 : ProductModel = ProductModel();
    
    @IBOutlet weak var labelProduct1Name : UILabel!
    @IBOutlet weak var labelProduct1Price : UILabel!
    @IBOutlet weak var imageViewProduct1Image : UIImageView!
    
    @IBOutlet weak var labelProduct2Name : UILabel!
    @IBOutlet weak var labelProduct2Price : UILabel!
    @IBOutlet weak var imageViewProduct2Image : UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        product1  = ProductModel(name: "iPhone 6", price: 2300.00, imageName: "product1")
        product2  = ProductModel(name: "iPhone 6 Plus", price: 2900.00, imageName: "product2")
        
        labelProduct1Name.text = product1.name
        labelProduct1Price.text = ("\(product1.price)")
        imageViewProduct1Image.image = UIImage(named: product1.imageName!)
        
        labelProduct2Name.text = product2.name
        labelProduct2Price.text = ("\(product2.price)")
        imageViewProduct2Image.image = UIImage(named: product2.imageName!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonShowDetailTapped(sender : UIButton)
    {
        var detailViewController : DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as DetailViewController
        
        var product : ProductModel? = nil
        if sender.tag == 1
        {
            product = product1
        }
        else if sender.tag == 2
        {
            product = product2
        }
        
        detailViewController.setupUIFor(product!)
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }


}

