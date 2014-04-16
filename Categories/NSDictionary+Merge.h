//
//  NSDictionary+Merge.h
//  objc-categories
//
//  Created by Yusuke Murata on 2014/04/17.
//  Copyright (c) 2014 Yusuke Murata (http://www.muratayusuke.com/)
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Merge)

- (NSDictionary*)mergeWithDictionary:(NSDictionary*)dict;

@end
