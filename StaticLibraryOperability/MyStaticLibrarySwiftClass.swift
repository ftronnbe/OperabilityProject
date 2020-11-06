//
//  StaticLibraryOperability.swift
//  StaticLibraryOperability
//
//  Created by Filip Tronnberg on 2020-11-06.
//

import UIKit

@objc
public class MyStaticLibrarySwiftClass: NSObject {

    public func logFromSwiftMainTarget() {
        print("Hello Swift in main target, from Swift in Static Library")
    }

    @objc
    public func  logFromObjectiveCMainTarget() {
        print("Hello Objective-C in main target, from Swift in Static Library")
    }

}
