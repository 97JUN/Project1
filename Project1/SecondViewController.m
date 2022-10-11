//
//  SecondViewController.m
//  Project1
//
//  Created by 쭌이 on 2022/10/11.
//

#import "SecondViewController.h"
#import "NotificationCenter/NotificationCenter.h"

@interface SecondViewController ()



@end

@implementation SecondViewController{
    
    NSDictionary *dict;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    dict = 
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabel:) name:@"updateLabel" object:nil];
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"updateLabel" object:nil userInfo:@{
        @"text" : @"010",
        @"name" : @"abc",
        @"age" : @"14",
        @"aaa" : @"15"
    }];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *identifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = 
    
    
    return cell;
}

@end
