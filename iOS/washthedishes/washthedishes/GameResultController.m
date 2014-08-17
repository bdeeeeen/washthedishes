//
//  GameResultController.m
//  washthedishes
//
//  Created by 中村幸一 on 2014/08/17.
//  Copyright (c) 2014年 Koichi Nakamura. All rights reserved.
//

#import "GameResultController.h"

@interface GameResultController ()

@end

@implementation GameResultController

@synthesize resultTime = _resultTime;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //タイマー表示
    self.ResultTimeLabel.text = _resultTime;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
