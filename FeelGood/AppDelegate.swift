//
//  AppDelegate.swift
//  FeelGood
//
//  Created by Hannah Gibson on 11/6/14.
//  Copyright (c) 2014 Hannah Gibson. All rights reserved.
//

import UIKit
//Don't need to import bridging header because it's done automatically.

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        Parse.setApplicationId( "hYyS2k9ZCYZAzXWcPuhswCqHI2q4x6OVlALUKpxM", clientKey: "HU26OAydkqxlkdIH82OsbcCwKiZZkyYrs2WqtZsB")
        //Calls setApplicationId method of Parse class with application ID and client key. Sets the application ID and client key for parse backend
        
        //Parse.getApplicationId() gets application ID
        //Parse.getClientKey() gets client key
        
        PFUser.enableAutomaticUser()
        //Enables users.
       
        var defaultACL = PFACL()
        //PFACL is used to control which users can access or modify a particular object. Each PFObject can have its own PFACL. You can grant read and write permissions separately to specific users, to groups of users that belong to roles, or you can grant permissions to “the public” so that, for example, any user could read a particular object but only a particular set of users could write to that object.
        
        defaultACL.setPublicReadAccess(true)
        //Allows public read access to user data. If you would like all objects to be private by default, remove this line.
        
        PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser: true)
        //Sets PFACL with access for current user
        
        PFAnalytics.trackAppOpenedWithLaunchOptionsInBackground(launchOptions, block: nil)
        //Calls trackAppOpenedWithLaunchOptionsInBackground is a method of PFAnalytics. Allows us to track use of the app. The options are set to the defualt launch options
        //PFAnalytics provides an interface to Parse’s logging and analytics backend
        
        return true
    }


    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

