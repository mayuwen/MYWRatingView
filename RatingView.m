//
//  RatingView.m
//  MyMovie
//
//  Created by Iven on 16/2/26.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import "RatingView.h"


@interface RatingView (){
    CGFloat  _width;
    CGFloat  _height;
    
    UIView* _grayView;
    UIView* _yellowView;

}

@end
@implementation RatingView

//如果代码写的话，用这个
-(id)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {
        [self _creatStarView];
    }
    return self;
}

////如果xib文件导入，用这个
//-(void)awakeFromNib{
//    [super awakeFromNib];
//    [self _creatStarView];
//}

-(void)_creatStarView{
//首先获取两张图片
    UIImage *grayStar = [UIImage imageNamed:@"gray"];
    UIImage *yellowStar = [UIImage imageNamed:@"yellow"];
    //获取图片的大小，作为view的参照
    _width = 5* grayStar.size.width;
    _height = grayStar.size.height;
    //创建灰色和黄色view视图
    _grayView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _width, _height)];
    _yellowView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _width, _height)];
    //平铺灰星星
    _grayView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed: @"gray" ]];
    [self addSubview:_grayView];
    
    //平铺黄星星
    _yellowView.backgroundColor = [UIColor colorWithPatternImage:yellowStar];
    [self addSubview:_yellowView];
    
    //获取倍数，根据倍数扩大星星的大小
    CGFloat scale = self.frame.size.width/_width;
    
    //按照倍数，放大
    _grayView.transform = CGAffineTransformMakeScale(scale, scale);
    
    _yellowView.transform = CGAffineTransformMakeScale(scale, scale);
    //放大后，位置发生了偏移，重新安置
    _grayView.frame = CGRectMake(0, 0, _grayView.frame.size.width, _grayView.frame.size.height);
    _yellowView.frame = CGRectMake(0, 0, _yellowView.frame.size.width, _yellowView.frame.size.height);
}
-(void)setRating:(float)rating{
    _yellowView.frame = CGRectMake(0, 0, _grayView.frame.size.width*rating/10.0, _grayView.frame.size.height);
}
@end
