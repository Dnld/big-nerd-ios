//
//  BNRContainer.h
//  RandomItems
//
//  Created by Donald Steinert on 6/1/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *items;

@end
