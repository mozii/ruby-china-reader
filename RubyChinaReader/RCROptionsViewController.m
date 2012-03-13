//
//  RCROptionsViewController.m
//  RubyChinaReader
//
//  Created by James Chen on 3/3/12.
//  Copyright (c) 2012 ashchan.com. All rights reserved.
//

#import "RCROptionsViewController.h"
#import "RCRSettingsManager.h"

@interface RCROptionsViewController ()
@property NSInteger refreshInterval;
@end

@implementation RCROptionsViewController

- (NSString *)nibName {
    return @"RCROptionsViewController";
}

- (NSImage *)image {
    return [NSImage imageNamed:NSImageNamePreferencesGeneral];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"General";
    }
    
    return self;
}

- (void)setRefreshInterval:(NSInteger)interval {
    [RCRSettingsManager sharedRCRSettingsManager].refreshInterval = interval;
}

- (NSInteger)refreshInterval {
    return [RCRSettingsManager sharedRCRSettingsManager].refreshInterval;
}

@end
