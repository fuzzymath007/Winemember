//
//  WineEntry.h
//  Winemember
//
//  Created by Matthew Chess on 8/6/14.
//  Copyright (c) 2014 matthewchess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, WineEntryRating){
    WineEntryRatingGood = 0,
    WineEntryRatingAverage = 1,
    WineEntryRatingBad = 3
};


@interface WineEntry : NSManagedObject

@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSData * image;
@property (nonatomic) int16_t rating;
@property (nonatomic, retain) NSString * location;

@end
