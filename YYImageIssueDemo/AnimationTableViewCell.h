//
//  AnimationTableViewCell.h
//  YYImageIssueDemo
//
//  Created by GeXiao on 21/03/2017.
//  Copyright © 2017 GeXiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYImage.h"
#import "YYWebImage.h"

static NSString *AnimationTableViewCellReuseIdentifier = @"AnimationTableViewCellReuseIdentifier";

@interface AnimationTableViewCell : UITableViewCell

@property (strong, nonatomic) YYAnimatedImageView *animatedImageView;

- (void)renderCellWithURLString:(NSString *)animationURL;

@end
