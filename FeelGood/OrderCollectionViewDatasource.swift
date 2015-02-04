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
    //orderType can be a string premade, bread, cheese, veggies, sauces, spices, or other
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
            var Cell: UICollectionViewCell
            if (self.orderType == "premade"){
                Cell = collectionView.dequeueReusableCellWithReuseIdentifier("preMadeCell",
                    forIndexPath: indexPath) as UICollectionViewCell
                //var imageView = UIImageView()
                //Cell.contentView.addSubview(imageView)
                //Cell.contentView.imageView =
            } else {
                Cell = collectionView.dequeueReusableCellWithReuseIdentifier("customCell",
                    forIndexPath: indexPath) as UICollectionViewCell
                var imageView = UIImageView()
                var textLabel = UITextField()
                if (orderType == "bread"){
                    imageView.image = breadArray[indexPath.row].getImage()
                    Cell.contentView.addSubview(imageView)
                    textLabel.text = breadArray[indexPath.row].getName()
                    Cell.contentView.addSubview(textLabel)
                } else if (orderType == "cheese"){
                    imageView.image = cheeseArray[indexPath.row].getImage()
                    Cell.contentView.addSubview(imageView)
                    textLabel.text = cheeseArray[indexPath.row].getName()
                    Cell.contentView.addSubview(textLabel)
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

