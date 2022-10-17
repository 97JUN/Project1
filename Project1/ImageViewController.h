//
//  ImageViewController.h
//  Project1
//
//  Created by 이현준 on 2022/10/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageViewController : UIViewController{
    
    
}


@property (weak, nonatomic) IBOutlet UISwitch *MySwitch;
@property (weak, nonatomic) IBOutlet UIImageView *MyImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *MyIndicator;

@end

NS_ASSUME_NONNULL_END
