//
//  YYTextExampleHelper.m
//  LearnYYText
//
//  Created by Mac on 19/5/27.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "YYTextExampleHelper.h"
#import "YYText.h"
#import "UIControl+YYAdd.h"
#import "UIView+YYAdd.h"

static BOOL DebugEnable = NO;

@implementation YYTextExampleHelper


+ (void)addDebugOptionToViewController:(UIViewController *)vc
{
    UISwitch *switcher = [UISwitch new];
    [switcher setOn:DebugEnable];
    [switcher addBlockForControlEvents:UIControlEventValueChanged block:^(UISwitch *sender) {
        [self setDebug:sender.isOn];
    }];
    
    UIView *view = [UIView new];
    view.size = CGSizeMake(40, 44);
    [view addSubview:switcher];
    switcher.centerX = view.width/2;
    switcher.centerY = view.height/2;
    
    UIBarButtonItem *item = [[UIBarButtonItem  alloc] initWithCustomView:view];
    vc.navigationItem.rightBarButtonItem = item;
}

+ (void)setDebug:(BOOL)debug{
    YYTextDebugOption *debugOptions = [YYTextDebugOption new];
    if (debug) {
        debugOptions.baselineColor = [UIColor redColor];
        debugOptions.CTFrameBorderColor = [UIColor redColor];
        debugOptions.CTLineFillColor = [UIColor colorWithRed:0.000 green:0.463 blue:0.000 alpha:0.180];
        debugOptions.CGGlyphBorderColor = [UIColor colorWithRed:1.000 green:0.524 blue:0.000 alpha:0.200];
    }else{
        [debugOptions clear];
    }
     
    [YYTextDebugOption setSharedDebugOption:debugOptions];
    DebugEnable = debug;
}


@end
