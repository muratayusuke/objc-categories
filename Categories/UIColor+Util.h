//
//  UIColor+Util.h
//  objc-categories
//
//  Created by Yusuke Murata on 2014/03/27.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import <UIKit/UIKit.h>

@interface UIColor (Util)

+ (UIColor*)colorWithIntRed:(NSUInteger)red
                      green:(NSUInteger)green
                       blue:(NSUInteger)blue
                      alpha:(NSUInteger)alpha;

@end
