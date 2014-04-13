//
//  UILabel+Util.m
//  objc-categories
//
//  Created by Yusuke Murata on 2014/03/23.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import "UILabel+Util.h"

@implementation UILabel (Util)

- (id)initWithText:(NSString *)text
              font:(UIFont *)font
          maxWidth:(CGFloat)maxWidth {
  self = [super init];
  if (self) {
    self.text = text;
    self.font = font;
    NSDictionary *attributeDic = @{NSFontAttributeName : font};
    CGSize size =
        [text boundingRectWithSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
                           options:NSStringDrawingUsesLineFragmentOrigin |
                                   NSStringDrawingTruncatesLastVisibleLine
                        attributes:attributeDic
                           context:nil].size;
    self.frame = CGRectMake(0, 0, size.width, size.height);
  }
  return self;
}

- (void)addUnderLine {
  NSAttributedString *str = [[NSAttributedString alloc]
      initWithString:self.text
          attributes:@{
                       NSUnderlineStyleAttributeName :
                       [NSNumber numberWithInteger:NSUnderlineStyleSingle],
                       NSFontAttributeName : self.font
                     }];
  self.attributedText = str;
}

@end
