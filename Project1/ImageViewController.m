//
//  ImageViewController.m
//  Project1
//
//  Created by 이현준 on 2022/10/14.
//

#import "ImageViewController.h"

@interface ImageViewController (){
    NSTimer *timerRepeat;
    int timerCount;
}

@end

@implementation ImageViewController

-(void)viewWillAppear {
    MySwitch.enabled;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startTimer];
    
    if (timerRepeat >= 2) {
        MySwitch.enabled = NO;
    }
   
    
    
}

-(void)startTimer {
    
    
    timerCount = 1;
    
    
    timerRepeat = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(timerFire:) userInfo:nil repeats:false];
    
}

- (void)timerFireMethod:(NSTimer *)timer {
    
}


@synthesize MyImage;
@synthesize MySwitch;


@end
