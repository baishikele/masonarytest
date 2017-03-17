//
//  AutoLayoutViewController.m
//  masonry练习
//
//  Created by shakalaka on 16/12/7.
//  Copyright © 2016年 shakalaka. All rights reserved.
//
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"
#import "AutoLayoutViewController.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView * redView = [[UIView alloc] init];
    [self.view addSubview:redView];
    redView.backgroundColor = [UIColor redColor];
    
    
      
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.view).with.offset(80.0f);
        make.left.equalTo(self.view).with.offset(20.0f);
        make.right.equalTo(self.view).with.offset(-20.0f);
        make.height.equalTo(100.0f);
        
    }];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [redView mas_updateConstraints:^(MASConstraintMaker *make) {
            
//            make.top.equalTo(self.view).with.offset(80.0f);
//            make.left.equalTo(self.view).with.offset(20.0f);
//            make.right.equalTo(self.view).with.offset(-20.0f);
            make.height.equalTo(200.0f);

//            make.bottom.equalTo(self.view).with.offset(-20.0f);
            
        }];
//        [self.view setNeedsLayout];
//
//        [self.view layoutIfNeeded];

    });
    

    
    UIView * yellowView = [[UIView alloc] init];
    [self.view addSubview:yellowView];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    
    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(redView.mas_bottom).with.offset(20.0f);
        make.left.equalTo(self.view).with.offset(20.0f);
        make.right.equalTo(self.view).with.offset(-20.0f);
        make.height.equalTo(60.0f);
        
    }];


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
