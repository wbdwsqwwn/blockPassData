//
//  DelegateController.m
//  block传值测试
//
//  Created by wanbd on 16/6/24.
//  Copyright © 2016年 ES. All rights reserved.
//

#import "DelegateController.h"

@interface DelegateController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation DelegateController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Delegate";
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if (self.textField.text.length != 0) {
        self.textField.text = nil;
    }
}

- (IBAction)buttonOnClick:(id)sender {
    if ([self.delegate respondsToSelector:@selector(passText:)]) {
        [self.delegate passText:self.textField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
