//
//  ViewController.m
//  block传值测试
//
//  Created by wanbd on 16/6/24.
//  Copyright © 2016年 ES. All rights reserved.
//

#import "MainController.h"
#import "DelegateController.h"
#import "BlockController.h"

@interface MainController ()<DelegateControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *delegateLabel;
@property (weak, nonatomic) IBOutlet UILabel *blockLabel;

@property (nonatomic ,strong) DelegateController *delegateController;
@property (nonatomic ,strong) BlockController *blockController;

@end

@implementation MainController

- (DelegateController *)delegateController {
    if (_delegateController == nil) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _delegateController = [sb instantiateViewControllerWithIdentifier:@"delegate"];
    }
    return _delegateController;
}

- (BlockController *)blockController {
    if (_blockController == nil) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _blockController = [sb instantiateViewControllerWithIdentifier:@"block"];
    }
    return _blockController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置代理
    self.delegateController.delegate = self;
    // 传递block
    [self.blockController passTextBlock:^(NSString *text) {
        self.blockLabel.text = text;
    }];
}

- (void)passText:(NSString *)text {
    self.delegateLabel.text = text;
}

- (IBAction)delegateButtonOnClick:(id)sender {
    [self.navigationController pushViewController:self.delegateController animated:YES];
}

- (IBAction)blockButtonOnClick:(id)sender {
    [self.navigationController pushViewController:self.blockController animated:YES];
}

@end
