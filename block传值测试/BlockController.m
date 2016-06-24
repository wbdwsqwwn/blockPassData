//
//  BlockController.m
//  block传值测试
//
//  Created by wanbd on 16/6/24.
//  Copyright © 2016年 ES. All rights reserved.
//

#import "BlockController.h"

@interface BlockController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BlockController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"block";
}

- (void)passTextBlock:(PassTextBlock)block {
    self.block = block;
}

- (IBAction)buttonOnClick:(id)sender {
    if (self.block != nil) {
        self.block(self.textField.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
