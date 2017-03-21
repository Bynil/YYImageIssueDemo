//
//  AnimationTableViewCell.m
//  YYImageIssueDemo
//
//  Created by GeXiao on 21/03/2017.
//  Copyright © 2017 GeXiao. All rights reserved.
//

#import "AnimationTableViewCell.h"

@implementation AnimationTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _animatedImageView = [[YYAnimatedImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _animatedImageView.contentMode = UIViewContentModeScaleAspectFill;
        _animatedImageView.layer.cornerRadius = 6.f;
        _animatedImageView.layer.masksToBounds = true;
        [self addSubview:_animatedImageView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:NO animated:animated];

    // Configure the view for the selected state
}

- (void)renderCellWithURLString:(NSString *)animationURL {
    self.animatedImageView.yy_imageURL = [NSURL URLWithString:animationURL];
    [self.animatedImageView stopAnimating];
}

@end
