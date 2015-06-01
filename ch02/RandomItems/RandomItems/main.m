//
//  main.m
//  RandomItems
//
//  Created by Donald Steinert on 6/1/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
//        NSMutableArray *items = [[NSMutableArray alloc] init];
 
        BNRContainer *container = [[BNRContainer alloc] init];
        container.name = @"Random Items";
        
        for (int i = 0; i < 10; i++) {
            BNRItem *newItem = [BNRItem randomItem];
            [container.items addObject:newItem];
        }
        
        NSLog(@"%@", container);
        
//        NSLog(@"%@", [container description]);
        
//        // broken code to create an exception
//        id lastItem = [items lastObject];
//        [lastItem count];
        
//        for (BNRItem *i in items) {
//            NSLog(@"%@", i);
//        }
        
//        // bug to note bounds exception in console
//        NSLog(@"%@", items[10]);
        
//        [items addObject:@"one"];
//        [items addObject:@"two"];
//        [items addObject:@"three"];
//        
//        [items insertObject:@"zero" atIndex:0];
//        
//        for (NSString *item in items) {
//            NSLog(@"%@", item);
//        }
        
//        BNRItem *item = [[BNRItem alloc] init];
//
//        [item setItemName:@"Red Sofa"];
//        [item setSerialNumber:@"A1B2C"];
//        [item setValueInDollars:100];
//
//        item.itemName = @"Red Sofa";
//        item.serialNumber = @"A1V2C";
//        item.valueInDollars = 100;
        
//        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
//
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
//                                           valueInDollars:100
//                                             serialNumber:@"A1B2C"];
//        
//        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        
//        BNRItem *itemWithNoName = [[BNRItem alloc] init];
//        
//        NSLog(@"%@", item);
//        NSLog(@"%@", itemWithName);
//        NSLog(@"%@", itemWithNoName);

        container = nil;
        
    return 0;
 
    }
}
