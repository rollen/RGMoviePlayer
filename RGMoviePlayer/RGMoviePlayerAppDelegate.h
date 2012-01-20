//
//  RGMoviePlayerAppDelegate.h
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RGVideoPlayerDelegate.h"

@interface RGMoviePlayerAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) id <RGVideoPlayerDelegate> videoPlayer;

@end
