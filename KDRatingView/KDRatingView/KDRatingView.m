//
//  KDRatingView.m
//  KDRatingView
//
//  Created by Kedar Desai on 04/03/14.
//  Copyright (c) 2014 Kedar Desai. All rights reserved.
//

#import "KDRatingView.h"

@implementation KDRatingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)rateKDRatingView:(double)ratingValue outOf:(NSUInteger)totalValue
{
    NSUInteger xPos = self.frame.origin.x;
    double tempRatingValue = ratingValue;
    for (NSUInteger currentStar=0; currentStar<totalValue; currentStar++) { // Looping for each star(imageView) in the KDRatingView
        
        UIImageView *starImageView = [[UIImageView alloc] initWithFrame:CGRectMake(xPos, 0, self.frame.size.width/totalValue, self.frame.size.height)];
        
        if (tempRatingValue-1>=0) {
            tempRatingValue--;
            // place one complete star
            [starImageView setImage:[UIImage imageNamed:@"1_star"]];
            
        } else {
            if ((tempRatingValue>=0)&&(tempRatingValue<0.25)) {
                // place 0 star
                [starImageView setImage:[UIImage imageNamed:@"grey_star"]];
                
            } else if ((tempRatingValue>=0.25)&&(tempRatingValue<0.50)) {
                // place 1/4 star
                [starImageView setImage:[UIImage imageNamed:@"1:4_star"]];
                
            } else if ((tempRatingValue>=0.50)&&(tempRatingValue<0.75)) {
                // place 1/2 star
                [starImageView setImage:[UIImage imageNamed:@"1:2_star"]];
                
            } else if ((tempRatingValue>=0.75)&&(tempRatingValue<1.0)) {
                // place 3/4 star
                [starImageView setImage:[UIImage imageNamed:@"3:4_star"]];
            }
            
            tempRatingValue=0;
        }
        
        // set tag starImageView which will allow to identify and differentiate it individually in calling class.
        // Add starImageView to view as a subView
        starImageView.tag = currentStar;
        [self addSubview:starImageView];
        
        // calculate new xPos and yPos
        xPos = xPos + starImageView.frame.size.width;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
