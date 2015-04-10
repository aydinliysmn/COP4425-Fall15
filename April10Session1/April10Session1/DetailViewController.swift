//
//  DetailViewController.swift
//  April10Session1
//
//  Created by Hasan Soysal on 10/04/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var currentProduct : ProductModel? = nil;
    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var labelPrice : UILabel!
    @IBOutlet weak var imageViewProductImage : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = currentProduct?.name
        labelPrice.text = "\(currentProduct?.price)"
        if let pro = currentProduct
        {
            imageViewProductImage.image = UIImage(named: currentProduct!.imageName!)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func setupUIFor(product : ProductModel)
    {
        currentProduct = product
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
