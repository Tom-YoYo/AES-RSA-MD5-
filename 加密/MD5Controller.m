//
//  MD5Controller.m
//  加密
//
//  Created by Jason on 15/9/8.
//  Copyright (c) 2015年 www.jizhan.com. All rights reserved.
//

#import "MD5Controller.h"
#import "MD5.h"

@interface MD5Controller ()
@property (weak, nonatomic) IBOutlet UITextField *contentTF;
@property (weak, nonatomic) IBOutlet UITextField *encryptTF;

@end

@implementation MD5Controller
- (IBAction)encrypt:(id)sender {
 
    self.encryptTF.text = [MD5 md5:self.contentTF.text];

}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"MD5加密";
    
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
