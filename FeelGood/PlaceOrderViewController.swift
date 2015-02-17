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
    var didOrderSend = false;
    var order = PFObject(className: "Order")
    var orderString = ""
    func setOrderString(orderString: String){
        self.orderString = orderString
    }
    
    @IBOutlet weak var getCustomerName: UITextField!
    
    @IBOutlet weak var getCustomerID: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func notifyCustomerOrderStatus(status: Bool) {
        if (status){
            var alert = UIAlertController(title: "Your order has been Placed", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        } else {
            var alert = UIAlertController(title: "Opps something went wron!", message: "Check your internet connection and try again", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.Default, handler: nil))
        }
    }
    
    
    @IBAction func submitOrder(sender: AnyObject) {
        var alert = UIAlertController(title: "Confirm your order", message: "your name is \(self.getCustomerName.text), your BU Student Id is \(self.getCustomerID.text), and your order is \(self.orderString)", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertActionStyle.Default, {action -> Void in
            //sets fields of parse object
            self.order["customerName"] = self.getCustomerName.text
            self.order["customerID"] = self.getCustomerID.text
            self.order["Order"] = self.orderString
            //saves order in background and sets member varible to value of boolean callback
            self.order.saveInBackgroundWithBlock({(success: Bool, error: NSError!) -> Void in
                self.didOrderSend = success
                self.notifyCustomerOrderStatus(success)
            })
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, {action -> Void in
            self.orderString = ""
            self.getCustomerName.text = ""
            self.getCustomerID.text = ""
           
        }))
    }
    
}