//
//  DetailVC.m
//  bai2
//
//  Created by Macmini on 6/15/16.
//  Copyright © 2016 SilkRoadPacific. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC
- (IBAction)Back_Click:(UIButton *)sender
{
[self dismissViewControllerAnimated:YES completion:^{}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
