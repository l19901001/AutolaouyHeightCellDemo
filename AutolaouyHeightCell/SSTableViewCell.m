//
//  SSTableViewCell.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/26.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "SSTableViewCell.h"
#import "TestModel.h"
#import "SSPhotosView.h"

@interface SSTableViewCell ()
{
    TestModel *_model;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageIcon;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UILabel *timeLable;
@property (weak, nonatomic) IBOutlet UILabel *textLable;
@property (weak, nonatomic) IBOutlet UILabel *subTextLable;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentH;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topViewH;
@property (weak, nonatomic) IBOutlet SSPhotosView *photoView;


@end

@implementation SSTableViewCell

-(void)setModel:(NSObject *)objc
{
    _model = (TestModel *)objc;
    
    _imageIcon.image = [UIImage imageNamed:_model.image_key];
    _nameLable.text = _model.name_key;
    _timeLable.text = _model.time_key;
    _textLable.text = _model.text_key;
    [_textLable sizeToFit];
    
    _photoView.images = _model.images;
    _contentH.constant = _photoView.frame.size.height;
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    CGRect rect = self.frame;
    rect.size.width = [UIScreen mainScreen].bounds.size.width;
    self.frame = rect;
    
    [self layoutIfNeeded];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    _subTextLable.preservesSuperviewLayoutMargins = _subTextLable.frame.size.width;
}

-(void)prepareForReuse
{
    [super prepareForReuse];
    
    [_photoView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
