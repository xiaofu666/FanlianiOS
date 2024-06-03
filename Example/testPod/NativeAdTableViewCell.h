//
//  ADTableViewCell.h
//  TestAdA
//
//  Created by lurich on 2020/4/4.
//  Copyright © 2020 YX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NativeAdTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *closeBtn;
@property (weak, nonatomic) IBOutlet UIView *adBackView;

@property (weak, nonatomic) IBOutlet UIImageView *mainAdImageView;
@property (weak, nonatomic) IBOutlet UIButton *clickButton;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *adLogo;


@property (nonatomic) CGFloat cellHeight;


@property (nonatomic, weak) UIViewController *showAdController;
// type: 1: 加载成功   2：渲染成功   3：模板广告关闭
@property (nonatomic, copy) void(^successBlock)(NSInteger type);

@property (nonatomic, copy) NSString *placeId;

- (void)loadAD;

- (void)registerAdView;

- (void)deallocAllFeedProperty;

@end

NS_ASSUME_NONNULL_END
