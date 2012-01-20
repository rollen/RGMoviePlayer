//
//  RGYoutubePlayerController.m
//  RGMoviePlayer
//
//  Created by ROLLEN GOMES on 1/20/12.
//  Copyright (c) 2012 NUS. All rights reserved.
//

#import "RGYoutubePlayerController.h"

@interface RGYoutubePlayerController()
-(NSURL *)sanitizeURL:(NSURL *)url;
@end

@implementation RGYoutubePlayerController

@synthesize view;

-(id) initWithContentURL:(NSURL *)url
{
    self = [super init];
    if(self){ 
        self.view = [[UIWebView alloc] init];
    }
    return self;
}

-(void) play
{
    NSURL *url = [self sanitizeURL:[NSURL URLWithString:@"http://www.youtube.com/v/053S4B5J0is?version=www3&autohide=1&autoplay=1"]];
    [self.view loadRequest:[NSURLRequest requestWithURL:url]]; 
}

-(NSURL *)sanitizeURL:(NSURL *)url{
    NSString *videoId = [[url absoluteString] substringWithRange:NSMakeRange(25, 11)];
    NSString *sanitisedURLString = [NSString stringWithFormat:@"http://www.youtube.com/embed/%@", videoId];
    return [NSURL URLWithString:sanitisedURLString];
}
@end
