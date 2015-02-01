//
//  PremadeOrderCollectionViewDeleage.swift
//  FeelGood
//
//  Created by Global App Initiative 3 on 1/31/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
//

import Foundation

class OrderDelagate: NSObject, UICollectionViewDelegate {
    //member varibles. Default value
    var dataType = "none"
    //setter method for dataType
    func setDataType(dataType: String){
        self.dataType = dataType
    }
    //getter method dor dataType
    func getDataType() -> String {
        return self.dataType
    }
    
    //executed if a function user selects an item in the collectionview
    //this is where we would have data added to the order
    func collectionView(collectionView: UICollectionView,
        didSelectItemAtIndexPath indexPath: NSIndexPath){
        //get the image and label of the cell and add them to the users order
            let Cell = collectionView.dequeueReusableCellWithReuseIdentifier("preMadeCell",
                forIndexPath: indexPath) as OrderCell
                if (dataType != "none"){
                //sets values on premade view controller if premade value is passed
                if (dataType == "PreMade"){
                    
                } else {
                    OrderPage.setIngredient(Cell.foodLabelView.text)
                }
            }
    }
    
}