//
//  MyObjcClass.m
//  OperabilityProject
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import "MyObjcClass.h"
#import "OperabilityProject-Swift.h"

@import DynamicFrameworkOperability;

@implementation MyObjcClass

/// MARK: Static library


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
