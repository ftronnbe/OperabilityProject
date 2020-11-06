//
//  MyObjcClass.m
//  OperabilityProject
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import "MyObjcClass.h"
#import "OperabilityProject-Swift.h"

@implementation MyObjcClass

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
