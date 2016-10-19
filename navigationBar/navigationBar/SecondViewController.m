//
//  SecondViewController.m
//  navigationBar
//
//  Created by mt on 16/10/19.
//  Copyright © 2016年 mt. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // 侧滑返回手势
    
    self.navigationController.interactivePopGestureRecognizer.delegate = nil;
}

CGFloat randomFloat () {
    return (arc4random()%256)/255.0;
}

CGFloat randomBool () {
    return arc4random()%2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:randomFloat() green:randomFloat() blue:randomFloat() alpha:1];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
    [self.view addGestureRecognizer:tap];
    
    self.hideNavigationBar = randomBool();
}

-(void)tapAction{
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
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
