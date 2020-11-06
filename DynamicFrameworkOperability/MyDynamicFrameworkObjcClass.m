//
//  MyDynamicFrameworkObjcClass.m
//  DynamicFrameworkOperability
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import "MyDynamicFrameworkObjcClass.h"

@implementation MyDynamicFrameworkObjcClass

- (void)logFromMainTargetSwift
{
    NSLog(@"Hello Swift in main target, from Objective-C in dynamic framework");
}

- (void)logFromMainTargetInObjectiveC
{
    NSLog(@"Hello Objective-C in main target, from Objective-C in dynamic framework");
}

@end
