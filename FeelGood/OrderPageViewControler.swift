//
//  OrderPageViewControler.swift
//  FeelGood
//
//  Created by Global App Initiative 3 on 1/31/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
//

import Foundation
import UIKit

class OrderPage : UIViewController {
    //member varibles
    var dataSource = OrderDatasource()
    var delegate = OrderDelagate()
    var ingredients: [String] = []
    //setter method for ingredients
    func setIngredient(ingredient: String){
        self.ingredients.append(ingredient)
    }
    //getter method for ingredients
    func getIngredients() -> [String] {
        return self.ingredients
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //sets the delegate and datasource of the collectionview
        self.CustomSandwichCollectionView.dataSource = self.dataSource
        self.CustomSandwichCollectionView.delegate = self.delegate
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBOutlet weak var OrderImageView: UIImageView!
    
    @IBOutlet weak var CustomSandwichCollectionView: UICollectionView!
    
    @IBAction func BreadSelected(sender: AnyObject) {
        self.dataSource.setOrderType("bread")
        self.delegate.setDataType("bread")
    }
    
    @IBAction func VeggiesSelected(sender: AnyObject) {
    }
    
    @IBAction func CheeseSelected(sender: AnyObject) {
        self.dataSource.setOrderType("cheese")
        self.delegate.setDataType("cheese")
    }
    
    @IBAction func SaucesSelected(sender: AnyObject) {
    }
    
    @IBAction func SpicesSelected(sender: AnyObject) {
    }
    
    @IBAction func OtherSelected(sender: AnyObject) {
    }
    
    //removes last ingredient if undo button pressed
    @IBAction func UndoSelected(sender: AnyObject) {
        ingredients.removeLast()
    }
    
    @IBAction func FeelingLuckySelected(sender: AnyObject) {
    }
    
    //Goes back
    @IBAction func Back(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func OrderPlaced(sender: AnyObject) {
        
    }
    
}
