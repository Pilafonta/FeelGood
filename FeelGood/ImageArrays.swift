//
//  ImageArrays.swift
//  FeelGood
//
//  Created by Global App Initiative 3 on 1/31/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
// File stores arrays of images

import Foundation

//custom data storage type
struct dataType {
    let foodImage : UIImage
    let foodName : String
    //initializer
    init(foodImage: UIImage, foodName: String){
        self.foodImage = foodImage
        self.foodName = foodName
    }
    //getter methods
    func getImage() -> UIImage{
        return self.foodImage
    }
    func getName() -> String {
        return self.foodName
    }
}

//Arrays need to be set up/
//One array for each type of ingredient
//One array for all the premade sandwiches

//Images to be used with view controller
let breadArray: [dataType] = [
    dataType(foodImage: UIImage(named: "white"), foodName: "White Bread"),
    dataType(foodImage: UIImage(named: "wheat"), foodName: "Wheat Bread")
]

let vegArray: [dataType] = [
    dataType(foodImage: UIImage(named: "onion"), foodName: "Onions"),
    dataType(foodImage: UIImage(named: "mushroom"), foodName: "Mushrooms"),
    dataType(foodImage: UIImage(named: "tomato"), foodName: "Tomato")
]

let cheeseArray: [dataType] = [
    dataType(foodImage: UIImage(named: "mozerella"), foodName: "Mozerella"),
    dataType(foodImage: UIImage(named: "cheddarcheese"), foodName: "Cheddar"),
    dataType(foodImage: UIImage(named: "jack_cheese"), foodName: "Monterey Jack")
]

//let sauceArray: [datatype] = []