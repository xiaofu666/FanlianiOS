//
//  AppDelegate.m
//  TransferPlatform
//
//  Created by lurich on 2021/9/14.
//

#import "AppDelegate.h"
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import "ADInfo.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *rootVC = [[UINavigationController alloc]initWithRootViewController:[NSClassFromString(@"ViewController") new]];//Study
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    [FLAdSDKManager registerAppId:app_id];
    
    [self requestAD];
    return YES;
}

- (void)requestAD{
    [self.window fl_showSplashADWithConfig:^(FLSplashADConfig * _Nonnull config) {
        UIImage *splashBg = [UIImage imageNamed:@"splashBg"];
        config.mediaID = splash_id;
        config.backgroundImage = splashBg;
        config.backgroundColor = [UIColor whiteColor];
        config.contentMode = UIViewContentModeScaleAspectFit;
        config.timeout = 5.0;
        config.bottomView = [[UIImageView alloc] initWithImage:splashBg];
    } completion:^(FLSplashADType type, NSError *error) {
        switch (type) {
            case FLSplashADTypeStart:
                NSLog(@"Block方式：开始广告流程开始");
                break;
            case FLSplashADTypeRequestAD:
                NSLog(@"Block方式：开始请求广告");
                break;
            case FLSplashADTypeLoadAD:
                NSLog(@"Block方式：广告加载成功");
                break;
            case FLSplashADTypeFail:
                NSLog(@"Block方式：广告加载失败");
                break;
            case FLSplashADTypeShow:
                NSLog(@"Block方式：广告展示");
                break;
            case FLSplashADTypeClick:
                NSLog(@"Block方式：广告点击");
                break;
            case FLSplashADTypeClose:
                NSLog(@"Block方式：开始广告流程结束");
                break;
                
            default:
                break;
        }
    }];
}

@end
