//
//  DelegateController.h
//  block传值测试
//
//  Created by wanbd on 16/6/24.
//  Copyright © 2016年 ES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DelegateController : UIViewController

@property (nonatomic ,weak) id delegate;

@end

@protocol DelegateControllerDelegate <NSObject>

- (void)passText:(NSString *)text;

@end