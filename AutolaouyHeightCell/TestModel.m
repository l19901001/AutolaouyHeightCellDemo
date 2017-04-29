//
//  TestModel.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/26.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "TestModel.h"
#import "MJExtension.h"

@implementation TestModel

+(instancetype)shareModel
{
    static TestModel *model = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        model = [[self alloc] initModel];
    });
    
    return model;
}

-(instancetype)initModel
{
    self = [super init];
    if(self){
        _rows = [NSMutableArray arrayWithCapacity:10];
        NSString *path_plist = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
        path_plist = [path_plist stringByAppendingPathComponent:@"data_text.plist"];
        
        NSFileManager *fileM = [NSFileManager defaultManager];
        if ([fileM fileExistsAtPath:path_plist]) {
            NSArray *array = [NSArray arrayWithContentsOfFile:path_plist];
            if(array.count>0){
                for (NSDictionary *dic in array) {
                    [_rows addObject:[TestModel mj_objectWithKeyValues:dic]];
                }
            }
        }else{
            NSString *text = @"测试数据";
            NSString *imagename = @"image_test";
            NSString *text_key = @"text_key";
            NSString *image_key = @"image_key";
            NSString *name_key = @"name_key";
            NSString *time_key = @"time_key";
            
            NSDateFormatter *format = [[NSDateFormatter alloc] init];
            format.dateFormat = @"yyyy:MM:dd HH:mm:ss";
            
            NSMutableArray *arr = [NSMutableArray array];
            for(int i = 0; i < 10; i++){
                text = [text stringByAppendingString:text];
                NSString *name_value = [NSString stringWithFormat:@"name_value_%d", i];
                NSDate *date = [NSDate dateWithTimeIntervalSinceNow:i*1000];
                NSString *time_value = [format stringFromDate:date];
                
//                if(i == 9){
//                    text = @"";
//                }
                NSDictionary *dic = @{text_key:text,
                                      image_key:imagename,
                                      name_key:name_value,
                                      time_key:time_value};
                [arr addObject:dic];
            }
            
            [arr writeToFile:path_plist atomically:YES];
            for (NSDictionary *dic in arr) {
                 [_rows addObject:[TestModel mj_objectWithKeyValues:dic]];
            }
        }

    }
    return self;
}

//-(NSMutableArray *)rows
//{
//    if(_rows == nil){
//        _rows = [NSMutableArray arrayWithCapacity:10];
//        NSString *path_plist = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
//        path_plist = [path_plist stringByAppendingPathComponent:@"data_text.plist"];
//        
//        NSFileManager *fileM = [NSFileManager defaultManager];
//        if ([fileM fileExistsAtPath:path_plist]) {
//            NSArray *array = [NSArray arrayWithContentsOfFile:path_plist];
//            if(array.count>0){
//                for (NSDictionary *dic in array) {
//                    [_rows addObject:[TestModel mj_objectWithKeyValues:dic]];
//                }
//            }
//        }else{
//            NSString *text = @"测试数据";
//            NSString *imagename = @"image_test";
//            NSString *text_key = @"text_key";
//            NSString *image_key = @"image_key";
//            NSString *name_key = @"name_key";
//            NSString *time_key = @"time_key";
//            
//            NSDateFormatter *format = [[NSDateFormatter alloc] init];
//            format.dateFormat = @"yyyy:MM:dd HH:mm:ss";
//            
//            NSMutableArray *arr = [NSMutableArray array];
//            for(int i = 0; i < 10; i++){
//                text = [text stringByAppendingString:text];
//                NSString *name_value = [NSString stringWithFormat:@"name_value_%d", i];
//                NSDate *date = [NSDate dateWithTimeIntervalSinceNow:i*1000];
//                NSString *time_value = [format stringFromDate:date];
//                
//                if(i == 9){
//                    text = @"";
//                }
//                NSDictionary *dic = @{text_key:text,
//                                      image_key:imagename,
//                                      name_key:name_value,
//                                      time_key:time_value};
//                [arr addObject:dic];
//            }
//            
//            [arr writeToFile:path_plist atomically:YES];
//        }
//    }
//    return _rows;
//}

-(NSArray *)images
{
    if(_images == nil){
        int randIndex = 1+arc4random()%9;
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:6];
        for(int i = 0; i<randIndex; i++){
            [arrayM addObject:@"image_test"];
        }
        _images = [arrayM copy];
    }
    return _images;
}


@end
