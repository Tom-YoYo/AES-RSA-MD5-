//
//  ViewController.m
//  加密
//
//  Created by Jason on 15/9/8.
//  Copyright (c) 2015年 www.jizhan.com. All rights reserved.
//

#import "ViewController.h"
#import "MD5Controller.h"
#import "AESController.h"
#import "RSAController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)md5:(id)sender {
    
    [self.navigationController pushViewController:[MD5Controller new] animated:YES];
    
}
- (IBAction)aes:(id)sender {
    
    [self.navigationController pushViewController:[AESController new] animated:YES];
    
}
- (IBAction)rsa:(id)sender {
    
    [self.navigationController pushViewController:[RSAController new] animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
