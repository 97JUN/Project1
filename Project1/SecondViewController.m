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
    
    NSArray *arr;
    
//    NSDictionary *dict;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    arr = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", nil];
    

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [arr count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
  
    static NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    
    
    
    return cell;
}

@end
