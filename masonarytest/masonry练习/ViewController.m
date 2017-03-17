//
//  ViewController.m
//  masonry练习
//
//  Created by shakalaka on 16/12/7.
//  Copyright © 2016年 shakalaka. All rights reserved.
//
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"
#import "ViewController.h"
#import "TableViewController.h"
#import "AutoLayoutViewController.h"
#import "EqualMarginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView * view0 = [[UIView alloc] init];
    [self.view addSubview:view0];
    view0.backgroundColor = [UIColor purpleColor];

    UIView * view = [[UIView alloc] init];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor redColor];
//    view.frame = CGRectMake(100, 100, 100, 100);
    
    UIView * view1 = [[UIView alloc] init];
    [self.view addSubview:view1];
    view1.backgroundColor = [UIColor greenColor];

    UIView * view2 = [[UIView alloc] init];
    [view addSubview:view2];
    view2.backgroundColor = [UIColor blueColor];
    
    
    UIButton * btn = [[UIButton alloc] init];
    [view1 addSubview:btn];
    [btn setTitle:@"tableView按钮" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.adjustsFontSizeToFitWidth = YES;
    
    UIButton * btn1 = [[UIButton alloc] init];
    [view1 addSubview:btn1];
    [btn1 setTitle:@"约束类型按钮" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor blueColor];
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setImage:[UIImage imageNamed:@"discover_house"] forState:UIControlStateNormal];
    btn1.titleLabel.adjustsFontSizeToFitWidth = YES;

    UIButton * btn2 = [[UIButton alloc] init];
    [view1 addSubview:btn2];
    [btn2 setTitle:@"等间距按钮" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blueColor];
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    btn2.titleLabel.adjustsFontSizeToFitWidth = YES;

    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.view).with.offset(70.0f);
        make.left.equalTo(self.view.mas_left).with.offset(50.0f);
        make.right.equalTo(self.view.mas_right).with.offset(-50);
        make.height.equalTo(50.0f);
        
    }];

    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(view0.mas_bottom).with.offset(20.0f);
        make.left.equalTo(self.view.mas_left).with.offset(50.0f);
        make.right.equalTo(self.view.mas_right).with.offset(-50);
//        make.bottom.equalTo(self.view.mas_bottom).with.offset(-250);
        make.height.equalTo(150.0f);
    }];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(view.mas_bottom).with.offset(50.0f);
        make.left.equalTo(self.view.mas_left).with.offset(50.0f);
        make.right.equalTo(self.view.mas_right).with.offset(-50);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-50);
        
    }];

    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(view).with.offset(50.0f);
        make.left.equalTo(view.mas_left).with.offset(50.0f);
        make.right.equalTo(view.mas_right).with.offset(-50);
        make.bottom.equalTo(view.mas_bottom).with.offset(-50);
        
    }];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(view1).with.offset(0.0f);
        make.left.equalTo(view1.mas_left).with.offset(0.0f);
//        make.width.equalTo(150.0f);
//        make.height.equalTo(50.0f);
        
    }];

    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(view1).with.offset(0.0f);
        make.right.equalTo(view1.mas_right).with.offset(0.0f);
//        make.width.equalTo(150.0f);
//        make.height.equalTo(50.0f);
        make.left.equalTo(btn.mas_right).with.offset(10.0f);
        make.width.equalTo(btn.mas_width);
    }];
    
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(view1.mas_bottom).with.offset(0.0f);
        make.left.equalTo(view1.mas_left).with.offset(0.0f);
        
    }];
    
        [self.view layoutIfNeeded];

//    [self.view layoutSubviews];

    NSLog(@"%@", NSStringFromCGRect(view.frame));
    NSLog(@"%@", NSStringFromCGRect(view2.frame));
    
    
    
    [UIView animateWithDuration:3.0
                     animations:^{
                         
                         
                         
                         [view0 mas_updateConstraints:^(MASConstraintMaker *make) {
                             make.height.equalTo(10.0f);
                         }];
//                         [view0.superview layoutIfNeeded];

                         
                         [view2 mas_updateConstraints:^(MASConstraintMaker *make) {
                             make.left.equalTo(view.mas_left).with.offset(80.0f);
                         }];
                         
                         
                         [btn2 mas_updateConstraints:^(MASConstraintMaker *make) {
                             
                             make.bottom.equalTo(view1.mas_bottom).with.offset(0.0f);
                             make.left.equalTo(view1.mas_left).with.offset(0.0f);
                             
                         }];

                         [btn2.superview layoutIfNeeded];
                         
                         
//                         [view2.superview layoutIfNeeded];
//                         [self.view layoutIfNeeded];
                         [self.view layoutIfNeeded];
                     }];
    
    
    CAKeyframeAnimation * keyAnimaion = [CAKeyframeAnimation animation];
    keyAnimaion.keyPath = @"transform.rotation";
    keyAnimaion.values = @[@0,@(-5 / 180.0 * M_PI),@(5 /180.0 * M_PI),@(0)];//度数转弧度
    
    keyAnimaion.removedOnCompletion = NO;
    keyAnimaion.fillMode = kCAFillModeForwards;
    keyAnimaion.duration = 0.3;
    keyAnimaion.repeatCount = MAXFLOAT;
    [view2.layer addAnimation:keyAnimaion forKey:nil];


}



- (void)btn1Click{
    AutoLayoutViewController* vc = [[AutoLayoutViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}
- (void)btnClick{

    TableViewController * vc = [[TableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btn2Click{

    EqualMarginViewController * vc = [[EqualMarginViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
