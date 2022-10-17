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


- (void)viewDidLoad {
    [super viewDidLoad];
    [MySwitch setOn: false];
    [MySwitch setEnabled:NO];
    [MyIndicator startAnimating];
    [self.MyImage setImage:[UIImage imageNamed:@"ic_control_call-mic_off"]];
    
    
    [self performSelector:@selector(ImageMake) withObject:nil afterDelay:2.0];
    
    
    
  //  [self startTimer];
    
//    if (timerRepeat >= 2) {
//        MySwitch.enabled = NO;
//    }
//
    
    
}

//-(void)startTimer {
    
    
    //timerCount = 1;
    
    
  //  timerRepeat = [NSTimer scheduledTimerWithTimeInterval: 1.0 target:self selector:@selector(timerFire:) userInfo:nil repeats:false];
    
//}

//- (void)timerFireMethod:(NSTimer *)timer {
//
//}


-(void)ImageMake {
    [MySwitch setOn:true];
    [MySwitch setEnabled:YES];
    [self.MyImage setImage:[UIImage imageNamed:@"40"]];
    [MyIndicator stopAnimating];
    self.MyIndicator.hidden = YES;
}


@synthesize MyImage;
@synthesize MySwitch;
@synthesize MyIndicator;

@end
