//
//  UIView+Util.m
//  objc-categories
//
//  Created by Yusuke Murata on 2014/03/23.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import "UIView+Util.h"

@implementation UIView (Util)

- (CGFloat)centerX {
  return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
  CGPoint center = self.center;
  center.x = centerX;
  self.center = center;
}

- (CGFloat)centerY {
  return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
  CGPoint center = self.center;
  center.y = centerY;
  self.center = center;
}

- (CGFloat)left {
  return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left {
  self.centerX = left + self.width / 2;
}

- (CGFloat)right {
  return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
  self.centerX = right - self.width / 2;
}

- (CGFloat)top {
  return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top {
  self.centerY = top + self.height / 2;
}

- (CGFloat)bottom {
  return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
  self.centerY = bottom - self.height / 2;
}

- (CGFloat)width {
  return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
  CGRect frame = self.frame;
  frame.size.width = width;
  self.frame = frame;
}

- (CGFloat)height {
  return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
}

- (void)expandFrame:(CGFloat)length {
  self.left -= length;
  self.top -= length;
  self.width += length * 2;
  self.height += length * 2;
}

@end
