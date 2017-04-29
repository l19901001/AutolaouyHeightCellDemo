//
//  BaseViewController.h
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/28.
//  Copyright © 2017年 lss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *rows;

@property (nonatomic, strong) UITableView *tableView;

@end
