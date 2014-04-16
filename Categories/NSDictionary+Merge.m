//
//  NSDictionary+Merge.m
//  objc-categories
//
//  Created by Yusuke Murata on 2014/04/17.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import "NSDictionary+Merge.h"

@implementation NSDictionary (Merge)

- (NSDictionary *)mergeWithDictionary:(NSDictionary *)dict {
  NSMutableDictionary *tmpDict =
      [NSMutableDictionary dictionaryWithDictionary:self];
  [tmpDict addEntriesFromDictionary:dict];
  return [NSDictionary dictionaryWithDictionary:tmpDict];
}

@end
