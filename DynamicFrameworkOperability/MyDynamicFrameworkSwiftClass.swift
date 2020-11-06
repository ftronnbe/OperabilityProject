//
//  MyDynamicFrameworkSwiftClass.swift
//  DynamicFrameworkOperability
//
//  Created by Filip Tronnberg on 2020-11-06.
//

import UIKit

@objc
public class MyDynamicFrameworkSwiftClass: NSObject {

    public func logFromSwiftMainTarget() {
        print("Hello Swift in main target, from Swift in dynamic framework")
    }

    @objc
    public func  logFromObjectiveCMainTarget() {
        print("Hello Objective-C in main target, from Swift in dynamic framework")
    }

}
