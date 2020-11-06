//
//  AppDelegate.swift
//  OperabilityProject
//
//  Created by Filip Tronnberg on 2020-11-06.
//

import UIKit
import DynamicFrameworkOperability

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        /// MARK: Same target operability

        // An Objective-C declared class used in Swift.
        let myObjcObject = MyObjcClass()
        print(myObjcObject.description)

        // Create a swift object in Objective-C
        myObjcObject.createSwiftObject()

        /// MARK: Dynamic framework operability

        // An objective-C class declared in a dynamic framework used in Swift in the main target
        let myDynamicFrameworkObjcObject = MyDynamicFrameworkObjcClass()
        myDynamicFrameworkObjcObject.logFromMainTargetSwift()

        // A swift class declared in a dynamic framework used in Swift in main target
        let myDynamicFrameworkSwiftObject = MyDynamicFrameworkSwiftClass()
        myDynamicFrameworkSwiftObject.logFromSwiftMainTarget()

        // A swift class in the dynamic framework used in Objective-C
        myObjcObject.createSwiftObjectFromDynamicFramework()

        // An Objective-C class used in an Objective-C class in the main target.
        myObjcObject.createObjectiveCObjectFromDynamicFramework()

        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

