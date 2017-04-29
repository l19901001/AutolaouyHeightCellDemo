//
//  BaseViewController.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/28.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "BaseViewController.h"
#import "SSTableViewCell.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _tableView = [[UITableView alloc] init];
    _tableView.frame = self.view.bounds;
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _rows.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SSTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SSTableViewcell"];
    if(cell == nil){
        cell = [[NSBundle mainBundle] loadNibNamed:@"SSTableViewcell" owner:self options:nil].firstObject;
    }
    
    [cell setModel:_rows[indexPath.row]];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
