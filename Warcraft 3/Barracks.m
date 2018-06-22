//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    return self;
}

- (Footman *)trainFootman {
    if ([self canTrainFootman]) {
        self.gold = self.gold - 135;
        self.food = self.food - 2;
        return [[Footman alloc] init];
    } else {
        return nil;
    }
}

- (BOOL)canTrainFootman {
    if ((self.gold >= 135) && (self.food >= 2)) {
        return true;
    } else {
        return false;
    }
}

- (BOOL)canTrainPeasant {
    if ((self.gold >= 90) && (self.food >= 5)) {
        return true;
    } else {
        return false;
    }
}

- (Peasant *)trainPeasant {
    if ([self canTrainPeasant]) {
        self.gold = self.gold - 90;
        self.food = self.food - 5;
        return [[Peasant alloc] init];
    } else {
        return nil;
    }
}

@end
