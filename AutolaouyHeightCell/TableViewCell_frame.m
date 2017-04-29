//
//  TableViewCell_frame.m
//  AutolaouyHeightCell
//
//  Created by lss on 2017/4/29.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "TableViewCell_frame.h"
#import "SSFrameModel.h"
#import "SSPhotosView.h"

@interface TableViewCell_frame ()
{
    UIView *_topView;
    UIImageView *_iconImage;
    UILabel *_nameLable;
    UILabel *_timeLable;
    UILabel *_textLable;
    
    UIView *_otherView;
    UILabel *_otherLable;
    SSPhotosView *_photosView;
    
    SSFrameModel *_model;
}

@end

@implementation TableViewCell_frame

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self initTopView];
        [self initOtherView];
    }
    return self;
}

-(void)initTopView
{
    _topView = [[UIView alloc] init];
    [self.contentView addSubview:_topView];
    
    _iconImage = [[UIImageView alloc] init];
    [_topView addSubview:_iconImage];
    
    _nameLable = [[UILabel alloc] init];
    [_topView addSubview:_nameLable];
    
    _timeLable = [[UILabel alloc] init];
    [_topView addSubview:_timeLable];
    
    _textLable = [[UILabel alloc] init];
    _textLable.numberOfLines = 0;
    [_topView addSubview:_textLable];
}

-(void)initOtherView
{
    _photosView = [[SSPhotosView alloc] init];
    [self.contentView addSubview:_photosView];
}

-(void)setModel:(NSObject *)objct
{
    _model = (SSFrameModel *)objct;
    
    _topView.frame = _model.topViewF;
    _photosView.frame = _model.otherViewF;
    
    _iconImage.frame = _model.iconImageF;
    _nameLable.frame = _model.nameLableF;
    _timeLable.frame = _model.timeLableF;
    _textLable.frame = _model.textLableF;
    _otherLable.frame = _model.otherLableF;
    
    _iconImage.image = [UIImage imageNamed:_model.model.image_key];
    _nameLable.text = _model.model.name_key;
    _timeLable.text = _model.model.time_key;
    _textLable.text = _model.model.text_key;
    _photosView.images = _model.model.images;
}

-(void)prepareForReuse
{
    [super prepareForReuse];
    
    [_photosView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
