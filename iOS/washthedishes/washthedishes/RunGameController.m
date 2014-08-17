//
//  RunGameController.m
//  washthedishes
//
//  Created by 中村幸一 on 2014/08/17.
//  Copyright (c) 2014年 Koichi Nakamura. All rights reserved.
//

#import "RunGameController.h"

@interface RunGameController ()

@end

@implementation RunGameController

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
    
    //タイマー動作開始、0.01秒きざみに設定
    timer1 =
    [NSTimer
     scheduledTimerWithTimeInterval:0.01
     target:self
     selector:@selector(timedisplay:)
     userInfo:nil
     repeats:YES];
    
    //スタート時間の取得
    stdate=[NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onResult:(id)sender {
    [self performSegueWithIdentifier:@"onResultSegue" sender:self];
}

- (void)timedisplay:(NSTimer *)timer
{
    NSDate *now=[NSDate date];    //現在の時間を取得
    
    //開始時間と現在時間の差分を、少数点以下2桁で表示
    self.timedisplay.text=
    [NSString stringWithFormat:@"%.2f",[now timeIntervalSinceDate:stdate]];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //timerを止める
    [timer1 invalidate];
    NSDate *now=[NSDate date];
    
    if ([segue.identifier isEqualToString:@"onResultSegue"]) {
        GameResultController *viewCon = segue.destinationViewController;
        viewCon.resultTime = [NSString stringWithFormat:@"%.2f",[now timeIntervalSinceDate:stdate]];
    }
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
