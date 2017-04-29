//
//  ViewController+autolayout.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/28.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "ViewController_autolayout.h"
#import "TestModel.h"

@interface ViewController_autolayout ()

@end

@implementation ViewController_autolayout

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.estimatedRowHeight = 1000;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    TestModel *model = [TestModel shareModel];
    self.rows = model.rows;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
