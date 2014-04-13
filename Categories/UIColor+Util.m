//
//  UIColor+Util.m
//  objc-categories
//
//  Created by Yusuke Murata on 2014/03/27.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import "UIColor+Util.h"

@implementation UIColor (Util)

+ (UIColor*)colorWithIntRed:(NSUInteger)red
                      green:(NSUInteger)green
                       blue:(NSUInteger)blue
                      alpha:(NSUInteger)alpha {
  return [self colorWithRed:[self getRatio:red]
                      green:[self getRatio:green]
                       blue:[self getRatio:blue]
                      alpha:[self getRatio:alpha]];
}

+ (CGFloat)getRatio:(NSUInteger)uint {
  return (CGFloat)uint / 255;
}

@end
