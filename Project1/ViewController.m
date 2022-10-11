//
//  ViewController.m
//  Project1
//
//  Created by 이현준 on 2022/10/09.
//

#import "ViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface ViewController ()



@end

@implementation ViewController

NSString *str;

static NSString *name = @"myNotification";
 

-(void) saveData {
    label.text = myTextView.text;
}

- (IBAction)inputButton:(id)sender {
    
    NSString *textViewText = myTextView.text;
    
//    [[NSNotificationCenter defaultCenter] postNotificationName:name object:nil ];
   
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateLable" object:nil userInfo:@{
        @"text" : textViewText,
        @"name" : @"abc",
        @"age" : @"14",
        @"aaa" : @"15"
    }];
   
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myTextView.delegate = self;
  
    //NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveData) name:name object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabel:) name:@"updateLable" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidshow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
   
    
}


- (void)updateLabel:(NSNotification *)notif{
    NSString *labelText = [notif.userInfo objectForKey:@"text"];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.label setText:labelText];
    });
    
    
    
}


- (void)keyboardDidshow:(NSNotification *)notif{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.MyButton setTintColor:UIColor.redColor];
    });
}

- (void)keyboardDidHide:(NSNotification *)notif{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.MyButton setTintColor:UIColor.blueColor];
    });
}

//-(void)textViewDidBeginEditing:(UITextView *)textView{
//    MyButton.tintColor = UIColor.redColor;
//}
//
//-(void)textViewDidEndEditing:(UITextView *)textView {
//    MyButton.tintColor = UIColor.blueColor;
//}


@synthesize label;
@synthesize myTextView;
@synthesize MyButton;


@end
