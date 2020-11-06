//
//  MyStaticLibraryObjcClass.m
//  StaticLibraryOperability
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import "MyStaticLibraryObjcClass.h"

@implementation MyStaticLibraryObjcClass

- (void)logFromMainTargetSwift
{
    NSLog(@"Hello Swift in main target, from Objective-C in Static Library");
}

- (void)logFromMainTargetInObjectiveC
{
    NSLog(@"Hello Objective-C in main target, from Objective-C in Static Library");
}

@end
