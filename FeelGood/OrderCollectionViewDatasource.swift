//
//  OrderCollectionViewDatasource.swift
//  FeelGood
//
//  Created by Global App Initiative 3 on 1/31/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
//

import Foundation

//collection view data source for premade order page
class OrderDatasource : NSObject, UICollectionViewDataSource {
    //member varibles of the data source are strings which indicate which arrays to pull data from to populate cells
    var orderType = "none"
    //setter method for order type
    //orderType can be a string Premade, bread, cheese, veggies, sauces, spices, or other
    func setOrderType(orderType: String){
        self.orderType = orderType
    }
    //getter method for order type
    func getOrderType() -> String {
        return self.orderType
    }
    
    //returns cell at index
    //would pass in the premade sandwich array and return the cell at indexpath.row
    func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
            let Cell = collectionView.dequeueReusableCellWithReuseIdentifier("preMadeCell",
            forIndexPath: indexPath) as OrderCell
            if (orderType != "none") {
                if (orderType == "bread"){
                    Cell.foodImageView.image = breadArray[indexPath.row].getImage()
                    Cell.foodLabelView.text =
                        breadArray[indexPath.row].getName()
                } else if (orderType == "cheese"){
                    Cell.foodImageView.image =
                        cheeseArray[indexPath.row].getImage()
                    Cell.foodLabelView.text =
                        cheeseArray[indexPath.row].getName()
                }
                //need to add the rest
            }
        return Cell
    }
    
    //sets number of items in section
    func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int{
            if (orderType != "none") {
                if (orderType == "bread"){
                    return breadArray.count
                } else if (orderType == "cheese") {
                    return cheeseArray.count
                }
                //need to add the rest
            }
            //default return value
        return 1
    }
    
   //sets number of sections in collection view
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int{
        //this stays one since only 1 row
        return 1
    }
    
}

//custom cell type that has image and label. Can use this class for cells in other collection view as well
class OrderCell : UICollectionViewCell {
    //cell properties
    var foodImageView: UIImageView!
    var foodLabelView: UITextField!
    //cell initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        //initalizes imageview with frame 2/3 of cell height
        foodImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        foodImageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(foodImageView)
        //initializes text label with frame 1/3 of cell hight
        let textFrame = CGRect(x: 0, y: foodImageView.frame.size.height, width: frame.size.width, height: frame.size.height/3)
        foodLabelView = UITextField(frame: textFrame)
        foodLabelView.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        foodLabelView.textAlignment = .Center
        contentView.addSubview(foodLabelView)
    }
    //this is requred, executes if custom initializer fails
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
