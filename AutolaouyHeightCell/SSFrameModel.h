//
//  SSFrameModel.h
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/29.
//  Copyright © 2017年 lss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestModel.h"

@interface SSFrameModel : NSObject

@property (nonatomic, strong) TestModel *model;

@property (nonatomic, assign) CGRect iconImageF;

@property (nonatomic, assign) CGRect nameLableF;

@property (nonatomic, assign) CGRect timeLableF;

@property (nonatomic, assign) CGRect textLableF;

@property (nonatomic, assign) CGRect otherLableF;

@property (nonatomic, assign) CGRect topViewF;

@property (nonatomic, assign) CGRect otherViewF;

@property (nonatomic, assign) CGFloat height;
@end
