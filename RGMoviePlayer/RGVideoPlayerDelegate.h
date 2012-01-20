//
//  RGVidePlayerDelegate.h
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RGVideoPlayerDelegate <NSObject>
-(id) initWithContentURL:(NSURL *)url;
-(UIView*) view;
-(void) play;
@end
