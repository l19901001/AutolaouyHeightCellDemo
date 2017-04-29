//
//  SSFrameModel.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/29.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "SSFrameModel.h"

@implementation SSFrameModel

-(void)setModel:(TestModel *)model
{
    _model = model;
    
    _iconImageF = CGRectMake(10, 10, 60, 60);
    
    _nameLableF = CGRectMake(CGRectGetMaxX(_iconImageF)+10, 10, 0, 0);
    CGSize size = [model.name_key sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.f]}];
    _nameLableF.size = size;
    
    size = [model.time_key sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.f]}];
    _timeLableF = CGRectMake(CGRectGetMaxX(_iconImageF)+10, CGRectGetMaxY(_iconImageF)-size.height, 0, 0);
    _timeLableF.size = size;
    
    size = [model.text_key boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width-20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.f]} context:nil].size;
    _textLableF = CGRectMake(10, CGRectGetMaxY(_iconImageF)+10, [UIScreen mainScreen].bounds.size.width-20, size.height);
    
    _topViewF = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGRectGetMaxY(_textLableF));
    
    _otherLableF = CGRectMake(0, 0, size.width, size.height);
    CGFloat manger = 10;
    CGFloat y = 0;
    CGFloat w = (([UIScreen mainScreen].bounds.size.width-20-4*manger))/3;
    CGFloat h = w;
    int col = (int)(model.images.count-1) / 3;
    y = col * (w + manger)+manger;
    _otherViewF = CGRectMake(10, _topViewF.size.height+10, [UIScreen mainScreen].bounds.size.width-20, y+h+10);
    
    _height = CGRectGetMaxY(_otherViewF)+10;
}

@end
