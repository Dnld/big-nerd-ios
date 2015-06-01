//
//  main.m
//  RandomItems
//
//  Created by Donald Steinert on 6/1/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        [items insertObject:@"zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
    return 0;
 
    }
}
