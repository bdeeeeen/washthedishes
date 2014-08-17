//
//  GameResult.h
//  washthedishes
//
//  Created by 中村幸一 on 2014/08/17.
//  Copyright (c) 2014年 Koichi Nakamura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameResultController : UIViewController {
    NSString* _resultTime;
}

@property (nonatomic) NSString* resultTime;
@property (weak, nonatomic) IBOutlet UILabel *ResultTimeLabel;

@end
