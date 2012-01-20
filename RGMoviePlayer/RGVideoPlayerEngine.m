//
//  BCVideoPlayerEngine.m
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import "RGVideoPlayerEngine.h"
#import "RGFacebookMoviePlayerController.h"
#import "RGYoutubePlayerController.h"

@implementation RGVideoPlayerEngine
+(id <RGVideoPlayerDelegate>) initVideoPlayerControllerWithContentURL:(NSURL *)url frame:(CGRect)frame {
    id <RGVideoPlayerDelegate> controller = nil;
    if([[url host] isEqualToString:@"www.youtube.com"]){
        controller = [[[RGYoutubePlayerController alloc] initWithContentURL:url] autorelease];
    } else {
        controller = [[[RGFacebookMoviePlayerController alloc] initWithContentURL:url] autorelease];
    }
    controller.view.frame = frame;
    return controller;
}
@end
