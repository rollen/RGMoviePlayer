//
//  RGYoutubePlayerController.h
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RGVideoPlayerDelegate.h"

@interface RGYoutubePlayerController : UIViewController <RGVideoPlayerDelegate>

@property (strong, nonatomic) UIWebView *view;
@end
