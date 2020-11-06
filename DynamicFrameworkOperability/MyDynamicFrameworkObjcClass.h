//
//  MyDynamicFrameworkObjcClass.h
//  DynamicFrameworkOperability
//
//  Created by Filip Tronnberg on 2020-11-06.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyDynamicFrameworkObjcClass : NSObject

- (void)logFromMainTargetSwift;

- (void)logFromMainTargetInObjectiveC;

@end

NS_ASSUME_NONNULL_END
