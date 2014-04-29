//
//  UIView+Util.h
//  objc-categories
//
//  Created by Yusuke Murata on 2014/03/23.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import <UIKit/UIKit.h>

@interface UIView (Util)

@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;
@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat bottom;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;

- (void)expandFrame:(CGFloat)length;
- (void)fitHeightWithSubViews;
- (void)addBorderBottom:(CGFloat)lineWeight color:(UIColor*)color;

@end
