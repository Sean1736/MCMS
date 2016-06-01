//
//  Boxer.m
//  MCMS
//
//  Created by Cindy Barnsdale on 6/1/16.
//  Copyright © 2016 Salar Kohnechi. All rights reserved.
//

#import "Boxer.h"

@implementation Boxer

-(instancetype)initWithName:(NSString *)name andSpecialMove:(NSString *)specialMove {
    self = [super init];
    if (self) {
        self.name = name;
        self.specialMove = specialMove;
    }
    return self;
}

@end
