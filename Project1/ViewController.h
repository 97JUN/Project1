//
//  ViewController.h
//  Project1
//
//  Created by 이현준 on 2022/10/09.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate>

//-(void) saveData; {
//        label.text = myTextView.text;
//    }


@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextView *myTextView;
@property (weak, nonatomic) IBOutlet UIButton *MyButton;

@end

