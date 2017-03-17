//
//  TableViewCell.m
//  masonry练习
//
//  Created by shakalaka on 16/12/7.
//  Copyright © 2016年 shakalaka. All rights reserved.
//
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"
#import "TableViewCell.h"

@interface TableViewCell ()

@property (nonatomic, strong)  UILabel *titleLabel;

@property (nonatomic, strong)  UIImageView *iconView;

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;

        
        self.iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.iconView];
        
        self.titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.numberOfLines = 0;
self.titleLabel.text = @"IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释IView的setNeedsLayout, layoutIfNeeded 和 layoutSubviews 方法之间的关系解释";
     
        
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).with.offset(15.0f);
            make.left.equalTo(self.contentView).with.offset(20.0f);
            
        }];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.iconView.mas_bottom).with.offset(20.0f);
            make.left.equalTo(self.contentView.mas_left).with.offset(20.0f);
            make.right.equalTo(self.contentView.mas_right).with.offset(-20.0f);
            make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-10);
        }];

    }
    return self;
}

-(void)setStr:(NSString *)str{

    _str = [str copy];
    
    self.iconView.image = [UIImage imageNamed:@"discover_house"];
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.iconView.image.size.width);
        make.height.equalTo(self.iconView.image.size.height);

    }];
    
    
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:str];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:18];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [str length])];
    [self.titleLabel setAttributedText:attributedString1];


}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
