//
//  PlaceOrderViewController.swift
//  FeelGood
//
//  Created by Hannah Gibson on 2/3/15.
//  Copyright (c) 2015 Hannah Gibson. All rights reserved.
//

import Foundation
import UIKit

class PlaceOrderViewController : UIViewController {
    
    
    @IBOutlet weak var getCustomerName: UITextField!
    
    @IBOutlet weak var getCustomerID: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    @IBAction func submitOrder(sender: AnyObject) {
    }
    
}