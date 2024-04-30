//
//  ViewController.m
//  LunchAd
//
//  Created by Lurich on 2018/5/21.
//  Copyright © 2018年 . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<NSArray<NSDictionary *> *> *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"广告组件";
    
    self.dataArr = [NSMutableArray array];
    
    [self.dataArr addObject:@[
        @{@"class":@"LaunchScreenViewController",@"name":@"开屏广告（全屏样式）"},
        @{@"class":@"HalfLaunchScreenViewController",@"name":@"开屏广告（半屏样式）"},
        @{@"class":@"InterstitialViewController",@"name":@"插屏广告"},
        @{@"class":@"BannerViewController",@"name":@"横幅广告"},
        @{@"class":@"MotivationVideoViewController",@"name":@"激励视频"},
        @{@"class":@"NativeAdViewController",@"name":@"原生混合"},
    ]];
    [self.dataArr addObject:@[
        @{@"class":@"IDFAViewController",@"name":@"查看IDFA"},
    ]];
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView{
    if (!_tableView) {
        if (@available(iOS 13.0, *)) {
            _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleInsetGrouped];
        } else {
            // Fallback on earlier versions
            _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
        }
        _tableView.rowHeight = 60;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArr.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr[section].count;
}
static NSString * cellID = @"CELL";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
    }
    cell.textLabel.text = self.dataArr[indexPath.section][indexPath.row][@"name"];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *classStr = self.dataArr[indexPath.section][indexPath.row][@"class"];
    [self.navigationController pushViewController:[NSClassFromString(classStr) new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"didReceiveMemoryWarning");
}

@end
