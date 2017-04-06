//
//  ViewController.h
//  masonry练习
//
//  Created by shakalaka on 16/12/7.
//  Copyright © 2016年 shakalaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/*
 
 1.==========================================================================================
 UIView *view = [[UIView alloc] init];
 [self.view addSubview:view];//必须先加入父View，否则crash
 [view mas_makeConstraints:^(MASConstraintMaker *make) {
 make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(20, 20, 20, 20));}
 
 * 等价于
 make.left.right.top.bottom.equalTo(self.view).insets(UIEdgeInsetsMake(20, 20, 20, 20));
 *

 * 等价于
 make.left.equalTo(view.superview).offset(20);
 make.top.equalTo(view.superview).offset(20);
 make.right.equalTo(view.superview).offset(-20);
 make.bottom.equalTo(view.superview).offset(-20);
 
];


2.==========================================================================================
 mas_makeConstraints //第一次生成约束使用
 mas_updateConstraints //更新其中的约束
 mas_remakeConstraints //重新生成约束，会将之前的所有约束先去掉
 
 使用注意：在循环cell，如果有代码重复调用的地方，比如在Cell赋值Model的过程中，必须要使用mas_remakeConstraints或者用下面的方法来更新约束，以此防止循环的时候生成相同的约束，影响性能，甚至，能使用make的地方基本都可以用remake进行代替，防止生成无谓的约束
 
 3.==========================================================================================
 // 子控件宽高为父控件的一半(multipliedBy) 相当于乘以 0.5
 make.width.height.equalTo(view.superview).multipliedBy(0.5);
 make.width.height.equalTo(view.superview).dividedBy(2);// 除
 make.height.mas_equalTo(0.6);// 等价于 make.height.equalTo(@(0.6))
 
 
 4.==========================================================================================
 make.height.equalTo(@[view1.mas_height, view2.mas_height]);
 make.height.equalTo(@[view1, view2]);
 make.left.equalTo(@[view1, @100, view3.right]);
*/
@end

