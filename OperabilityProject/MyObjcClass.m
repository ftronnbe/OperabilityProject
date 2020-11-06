//
//  MyObjcClass.m
//  OperabilityProject
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import "MyObjcClass.h"
#import "OperabilityProject-Swift.h"
#import "MyStaticLibraryObjcClass.h"

// This file cannot be found
//#import "StaticLibraryOperability-Swift.h"

// This module cannot be found.
//@import StaticLibraryOperability;

@import DynamicFrameworkOperability;

@implementation MyObjcClass

/// MARK: Static library

- (void)createObjectiveCObjectFromStaticLibrary
{
    MyStaticLibraryObjcClass *objcObject = [[MyStaticLibraryObjcClass alloc] init];
    [objcObject logFromMainTargetInObjectiveC];
}

- (void)createSwiftObjectFromStaticLibrary
{
#warning "How to make this work?"
    // Swift declared in static library not reachable in main target...

//    MyStaticLibrarySwiftClass *swiftObject = [[MyStaticLibrarySwiftClass alloc] init];
//    [swiftObject logFromObjectiveCMainTarget];
}

/// MARK: Dynamic framework

- (void)createObjectiveCObjectFromDynamicFramework
{
    MyDynamicFrameworkObjcClass *objcObject = [[MyDynamicFrameworkObjcClass alloc] init];
    [objcObject logFromMainTargetSwift];
}

- (void)createSwiftObjectFromDynamicFramework
{
    MyDynamicFrameworkSwiftClass *swiftObject = [[MyDynamicFrameworkSwiftClass alloc] init];
    [swiftObject logFromObjectiveCMainTarget];
}

/// MARK: Same target

- (void)createSwiftObject
{
    MySwiftClass *swiftObject = [[MySwiftClass alloc] init];
    NSLog(@"%@", swiftObject.description);
}

- (NSString *)description
{
    return @"Hello Swift, I'm an Objective-C object";
}

@end
