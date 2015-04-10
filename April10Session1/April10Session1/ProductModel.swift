//
//  ProductModel.swift
//  April10Session1
//
//  Created by Hasan Soysal on 10/04/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import Foundation

class ProductModel : NSObject {
    var name : NSString = ""
    var price : Double = 0
    var imageName : NSString? = nil
    
    override init(){}
    init(name : NSString , price : Double, imageName : NSString)
    {
        self.name = name;
        self.price = price
        self.imageName = imageName
    }
}
