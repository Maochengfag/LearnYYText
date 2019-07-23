//
//  YYTextExampleHelper.h
//  LearnYYText
//
//  Created by Mac on 19/5/27.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YYTextExampleHelper : NSObject
+ (void)addDebugOptionToViewController:(UIViewController *)vc;
+ (void)setDebug:(BOOL)debug;
+ (void)isDebug;
@end
