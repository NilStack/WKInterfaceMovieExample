//
//  InterfaceController.m
//  WatchMovie Extension
//
//  Created by Peng on 7/21/15.
//  Copyright © 2015 Peng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceMovie *moviePlayer;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSURL *movie = [[NSBundle mainBundle] URLForResource:@"cat" withExtension:@"m4v"];
    [self.moviePlayer setMovieURL:movie];
    [self.moviePlayer setPosterImage:[WKImage imageWithImageName:@"poster"]];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



