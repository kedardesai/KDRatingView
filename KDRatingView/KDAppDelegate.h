//
//  KDAppDelegate.h
//  KDRatingView
//
//  Created by Kedar Desai on 04/03/14.
//  Copyright (c) 2014 Kedar Desai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDAppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navController;
}

@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) UIWindow *window;

@end
