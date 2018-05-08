//
//  ZXCardScrollViewCell.m
//  ZXCardScrollView
//
//  Created by SWT on 2018/5/8.
//  Copyright © 2018年 SWT. All rights reserved.
//

#import "ZXCardScrollViewCell.h"

@implementation ZXCardScrollViewCell

-(instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
        {
        [self.contentView addSubview:self.imageView];
        }
    return self;
}

#pragma mark - lazy load

-(UIImageView *)imageView{
    if(!_imageView){
        _imageView = [[UIImageView alloc]init];
    }
    return _imageView;
}

-(void)layoutSubviews{
    self.imageView.frame = self.bounds;
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.imageView.bounds cornerRadius:self.imgCornerRadius];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
    //设置大小
    maskLayer.frame = self.bounds;
    //设置图形样子
    maskLayer.path = maskPath.CGPath;
    _imageView.layer.mask = maskLayer;
}


@end
