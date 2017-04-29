//
//  TestModel.h
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/26.
//  Copyright © 2017年 lss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestModel : NSObject

+(instancetype)shareModel;

@property (nonatomic, strong) NSMutableArray *rows;

@property (nonatomic, copy) NSString *text_key;

@property (nonatomic, copy) NSString *image_key;

@property (nonatomic, copy) NSString *name_key;

@property (nonatomic, copy) NSString *time_key;

@property (nonatomic, strong) NSArray *images;


@end
