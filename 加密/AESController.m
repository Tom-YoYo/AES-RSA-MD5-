//
//  AESController.m
//  加密
//
//  Created by Jason on 15/9/8.
//  Copyright (c) 2015年 www.jizhan.com. All rights reserved.
//

#import "AESController.h"
#import "AES.h"

@interface AESController ()

@property (copy, nonatomic) NSString *password;

@property (weak, nonatomic) IBOutlet UITextField *contentTF;
@property (weak, nonatomic) IBOutlet UILabel *encryptLabel;
@property (weak, nonatomic) IBOutlet UILabel *decryptLabel;

@end

@implementation AESController
- (IBAction)encrypt:(id)sender {

    self.encryptLabel.text = [AES encrypt:self.contentTF.text password:self.password];
    
}
- (IBAction)decrypt:(id)sender {
    
    self.decryptLabel.text = [AES decrypt:self.encryptLabel.text password:self.password];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.password = @"www.jizhan.com";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
