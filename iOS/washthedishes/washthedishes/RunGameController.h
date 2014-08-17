//
//  RunGameController.h
//  washthedishes
//
//  Created by 中村幸一 on 2014/08/17.
//  Copyright (c) 2014年 Koichi Nakamura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameResultController.h"

@interface RunGameController : UIViewController {
NSTimer *timer1;    //タイマ
NSDate *stdate;    //タイマスタートの時間
}
@property (weak, nonatomic) IBOutlet UILabel *timedisplay;

- (IBAction)onResult:(id)sender;
- (void)timedisplay:(NSTimer *)timer;    //タイムアウトで時間表示するメソッド
@end
