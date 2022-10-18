//
//  ImageViewController.m
//  Project1
//
//  Created by 이현준 on 2022/10/14.
//

#import "ImageViewController.h"

@interface ImageViewController (){
    
    
    
}

@end

@implementation ImageViewController 



- (void)viewDidLoad {
    [super viewDidLoad];
    [MySwitch setOn: false];
    [self.MyImage setImage:[UIImage imageNamed:@"40"]];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gesture:)];
    
    [MyView addGestureRecognizer:tapGesture];
    
  //  [self performSelector:@selector(ImageMake) withObject:nil afterDelay:2.0];
    
    //제스터 등록 방법
    //1. xib에서 컴포넌트 사용하듯이 추가해주는 방법
    //2. 코드 상에서 추가해주는 방법
    //View 등록, View에 gesture 등록
    
    //xib에서 컴포넌트 사용하듯이 추가
    
    
  //  [self startTimer];
    
//    if (timerRepeat >= 2) {
//        MySwitch.enabled = NO;
//    }
//
 
    
    //TapGestureRecognizer.enabled = NO;
    
}
-(void)gesture: (UIGestureRecognizer *)recognizer {
  
        
        
        [MyIndicator startAnimating];
        
    
    //    recognizer.enabled = NO;
    
  
        
        [self performSelector:@selector(ImageMake) withObject:nil afterDelay:2.0];
    
   
        
        
}




//- (IBAction)tapGesture:(id)sender {
//    
//    [MyIndicator startAnimating];
//    
//    
//    [self performSelector:@selector(ImageMake) withObject:nil afterDelay:2.0];
//    
//    
//    
//}

//- (void)onGesture{
//    //Gesture가 들어오는 곳
//    //인디케이터 시작
//    // performSelector (딜레이 2초)
//}




-(void)ImageMake {
    [MyIndicator stopAnimating];
    
    
    if (MySwitch.isOn == true){
        [self.MyImage setImage:[UIImage imageNamed:@"40"]];
        [MySwitch setOn:NO];
        
        
        
        
    }else {
        [self.MyImage setImage:[UIImage imageNamed:@"ic_control_call-mic_off"]];
        [MySwitch setOn:YES];
        
        
    }
    
    
    //인디케이터 stop
    //switch 상태에 따라서 함수 구현
//    [MySwitch setOn:true];
//    [MySwitch setEnabled:YES];
//    [self.MyImage setImage:[UIImage imageNamed:@"40"]];
//    [MyIndicator stopAnimating];
//    self.MyIndicator.hidden = YES;
}


@synthesize MyImage;
@synthesize MySwitch;
@synthesize MyIndicator;
@synthesize MyView;

@end
