//
//  BCVideoPlayerEngine.h
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RGVideoPlayerDelegate.h"

@interface RGVideoPlayerEngine : NSObject
+(id <RGVideoPlayerDelegate>) initVideoPlayerControllerWithContentURL:(NSURL *)url frame:(CGRect)frame;
@end
