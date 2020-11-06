//
//  MyObjcClass.h
//  OperabilityProject
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyObjcClass : NSObject

- (void)createSwiftObject;

- (void)createSwiftObjectFromDynamicFramework;

- (void)createObjectiveCObjectFromDynamicFramework;

@end

NS_ASSUME_NONNULL_END
