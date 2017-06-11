//
//  ViewController.m
//  LEEAlertView
//
//  Created by 李江波 on 2017/6/10.
//  Copyright © 2017年 lijiangbo. All rights reserved.
//

#import "ViewController.h"
#import "LEEAlertViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)type1Click:(id)sender {
    
    [LEEAlertViewController showWithTitle:@"警告" message:@"helloWoeld"];
    /*
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleAlert handle:^(UIAlertAction * _Nullable action) {
        
        NSLog(@"简单样式1");
    }];
     */
}
- (IBAction)type2Click:(id)sender {
    
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleActionSheet actionTitles:@[@"你", @"我"] handles:@[^(UIAlertAction *action){
       
        NSLog(@"你");
    }, ^(UIAlertAction *action){
        
        NSLog(@"我");
    }]];
}
- (IBAction)type3Click:(id)sender {
    
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleAlert actionTitles:@[@"不做处理", @"我",@"他"] handles:@[@"",^(UIAlertAction *action){
        
        NSLog(@"我");
    }, ^(UIAlertAction *action){
        
        NSLog(@"他");
    }]];
}
- (IBAction)type4Click:(id)sender {
    /*1.
    [LEEAlertViewController setDestructiveActionStyle:1];
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleActionSheet actionTitles:@[@"你", @"警告"] handles:@[^(UIAlertAction *action){
        
        NSLog(@"你");
    }, ^(UIAlertAction *action){
        
        NSLog(@"警告");
    }]];
     */
    [LEEAlertViewController setCancleActionStyle:0];
    [LEEAlertViewController setDestructiveActionStyle:1];
    [LEEAlertViewController showWithTitle:@"提示" message:@"你好啊" alertType:UIAlertControllerStyleActionSheet actionTitles:@[@"取消", @"警告"] handles:@[^(UIAlertAction *action){
        
        NSLog(@"取消");
    }, ^(UIAlertAction *action){
        
        NSLog(@"警告");
    }]];
}

- (IBAction)type5Click:(id)sender {
    
    [LEEAlertViewController showTextFieldWithTitle:@"提示" message:@"你好啊" actionTitles:@[@"取消"] handles:@[^(UIAlertAction *action){
        
        NSLog(@"输入的用户名%@",self.textField.text);
    }] textFieldHandles:@[^(UITextField * _Nonnull textField){
    
        textField.placeholder = @"登录";
        self.textField = textField;
    },^(UITextField * _Nonnull textField){
        
        textField.placeholder = @"密码";
    }]];
}

@end



