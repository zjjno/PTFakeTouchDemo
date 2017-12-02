//
//  ViewController.m
//  PTFakeTouchDemo
//
//  Created by In8 on 2017/12/2.
//  Copyright © 2017年 In8. All rights reserved.
//

#import "ViewController.h"
#import <PTFakeTouch/PTFakeTouch.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gogo:(id)sender {
    NSInteger pointId = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(100,100) withTouchPhase:UITouchPhaseBegan];
    [PTFakeTouch fakeTouchId:pointId AtPoint:CGPointMake(100,100) withTouchPhase:UITouchPhaseEnded];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded");
}
@end
