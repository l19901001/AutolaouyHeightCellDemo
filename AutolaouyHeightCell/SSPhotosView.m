//
//  SSPhotosView.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/28.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "SSPhotosView.h"

@interface SSPhotosView ()


@end

@implementation SSPhotosView

-(void)setImages:(NSArray *)images
{
    CGFloat manger = 10;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = (self.frame.size.width-4*manger)/3;
    CGFloat h = w;
    for(int i = 0; i < images.count; i++){
        UIImageView *imageV = [[UIImageView alloc] init];
        imageV.image = [UIImage imageNamed:images[i]];
        int row = i % 3;
        int col = i / 3;
        x = row * (w + manger)+manger;
        y = col * (w + manger)+manger;
        imageV.frame = CGRectMake(x, y, w, h);
        
        [self addSubview:imageV];
    }
    
    UIView *lastView = self.subviews.lastObject;
    CGRect rect = self.frame;
    rect.size.height = CGRectGetMaxY(lastView.frame)+manger;
    self.frame = rect;
}

@end
