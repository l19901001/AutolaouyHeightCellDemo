//
//  ViewController.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/25.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "ViewController.h"
#import "FPSDisplay.h"

@interface ViewController () 

@property(nonatomic, strong) NSArray *rows;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationItem.title = NSStringFromClass([self class]);
    _rows = @[@"ViewController_frame", @"ViewController_autolayout"];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [FPSDisplay shareFPSDisplay];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mainCell"];
    if(cell == nil){
        cell = [[NSBundle mainBundle] loadNibNamed:@"mainCell" owner:self options:nil].firstObject;
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = _rows[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *className = _rows[indexPath.row];
    UIViewController *vc = [NSClassFromString(className) new];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
