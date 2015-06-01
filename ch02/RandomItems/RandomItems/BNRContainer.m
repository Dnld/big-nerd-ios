//
//  BNRContainer.m
//  RandomItems
//
//  Created by Donald Steinert on 6/1/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (NSMutableArray *)items
{
    if (!_items) {
        _items = [[NSMutableArray alloc] init];
    }

    return _items;
}

- (NSString *)description
{
    int v = 0;
    for (BNRItem *item in _items) {
        v += item.valueInDollars;
    }
    
    NSString *allItems = @"\t\t";
    
    for (BNRItem *item in self.items) {
        NSString *itemDescription = [item description];
        allItems = [allItems stringByAppendingString:itemDescription];
        if (item != [self.items lastObject]) {
            allItems = [allItems stringByAppendingString:@"\n\t\t\t\t"];
        }
    }

    return [NSString stringWithFormat:@"\n\tCollection: \t%@\n\tValue: \t\t$%d\n\tItems: %@", self.name, v, allItems];
}

@end
