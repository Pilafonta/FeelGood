//
//  OrderViewController.swift
//  FeelGood
//
//  Created by Global App Initiative 3 on 1/31/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
//

import Foundation
import UIKit

class PremadeOrderPage : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //sets imageview image as plate
        self.orderImage.image = UIImage(named: "plate")
        //sets collectionview datasource and delegate
        premadeOrderCollectionView.delegate = OrderDelagate()
        premadeOrderCollectionView.dataSource = OrderDatasource()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var orderImage: UIImageView!
    
    @IBOutlet weak var customerName: UITextField!
    
    @IBOutlet weak var customerID: UITextField!
    
    @IBOutlet weak var premadeOrderCollectionView: UICollectionView!
    
    //called when order placed
    @IBAction func orderPlaced(sender: AnyObject) {
    }
    //Back button pressed
    @IBAction func Back(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}