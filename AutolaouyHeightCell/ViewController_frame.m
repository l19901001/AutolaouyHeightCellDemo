//
//  ViewController+frame.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/28.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "ViewController_frame.h"
#import "TableViewCell_frame.h"
#import "TestModel.h"
#import "SSFrameModel.h"

@interface ViewController_frame ()

@end

@implementation ViewController_frame

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    TestModel *model = [TestModel shareModel];
    NSMutableArray *arram = [NSMutableArray arrayWithCapacity:model.rows.count];
    for (TestModel *models in model.rows) {
        SSFrameModel *frameModel = [[SSFrameModel alloc] init];
        frameModel.model = models;
        [arram addObject:frameModel];
    }
    self.rows = arram;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid = @"TableViewCell_frame";
    TableViewCell_frame *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell == nil) {
        cell = [[TableViewCell_frame alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    }
    
    [cell setModel:self.rows[indexPath.row]];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SSFrameModel *frameModel = self.rows[indexPath.row];
    return frameModel.height;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
