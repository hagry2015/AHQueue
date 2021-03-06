//
//  AHQueue.h
//  Algorithms
//
//  Created by Amr El-Hagry on 1/17/16.
//  Copyright © 2016 Xcode Developer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AHQueue : NSObject
@property (strong, nonatomic) NSMutableArray *queue;


@property (readonly, nonatomic) int objsNumber;
@property (readwrite, nonatomic) int max;

-(void) removeAll;
-(BOOL) isEmpty;
-(BOOL) isFull;

-(void) enqueue:(id)object;
-(id) dequeue;
-(id) peek;
-(int) count;
@end
