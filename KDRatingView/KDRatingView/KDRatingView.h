//
//  KDRatingView.h
//  KDRatingView
//
//  Created by Purva Paldhe on 04/03/14.
//  Copyright (c) 2014 Kedar Desai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDRatingView : UIView
{
    UIImageView *star1, *star2, *star3, *star4, *star5;
}

-(void)rateKDRatingView:(double)ratingValue outOf:(NSUInteger)totalValue;

@end
