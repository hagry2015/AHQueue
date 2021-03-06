//
//  AHQueue.m
//  Algorithms
//
//  Created by Amr El-Hagry on 1/17/16.
//  Copyright © 2016 Xcode Developer. All rights reserved.
//

#import "AHQueue.h"

@implementation AHQueue
@synthesize objsNumber;
@synthesize max;
@synthesize queue;

-(instancetype)init
{
    objsNumber=0;
    queue=[NSMutableArray new];
    max=0;
    return self;
}
// Remove all Objects from Queue
-(void) removeAll
{
    [queue removeAllObjects];
}
// Check if Queue is Empty
-(BOOL) isEmpty
{
    if (objsNumber==0)
    {
        return YES;
    }
    return NO;
}
// Check if Queue Reached Maximum Allowed Objects
-(BOOL) isFull
{
    if (objsNumber==max)
    {
        return YES;
    }
    return NO;
}
// Add an Object to Queue
-(void) enqueue:(id)object;
{
    if ([self isFull])
    {
        NSLog(@"stack is full");
    }
    else
    {
        [queue addObject:object];
        objsNumber++;
    }
}
// Remove first Object in Queue
-(id) dequeue;
{
    if ([self isEmpty]) {
        NSLog(@"stack is empty");
        return nil;
    }
    else
    {
        id head = [queue objectAtIndex:0];
            [queue removeObjectAtIndex:0];
        
        objsNumber--;
        return head;
    }
}
// Return Queue Last Object
-(id) peek
{
    if ([self isEmpty]) {
        NSLog(@"stack is empty");
        return nil;
    }
    else
    {
        id object=[queue objectAtIndex:objsNumber];
        return object;
    }
}
// Return Queue length
-(int) count
{
    return objsNumber;
}
@end
