//
//  BlockController.h
//  block传值测试
//
//  Created by wanbd on 16/6/24.
//  Copyright © 2016年 ES. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^PassTextBlock)(NSString *text);

@interface BlockController : UIViewController

@property (nonatomic ,copy) PassTextBlock block;

- (void)passTextBlock:(PassTextBlock)block;

@end
