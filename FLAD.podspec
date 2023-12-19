Pod::Spec.new do |s|
  s.name         = "FLAD"
  s.version      = "2.7.5.2"
  s.summary      = "Mobile App Aggregation Ad SDK of Fanlian SDK for iOS."
  s.description  = <<-DESC
            Fanlian SDK is an advertising aggregation SDK that allows you to monetize iOS applications through Mediatom advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'
  
  s.platform     = :ios, '12.0'
  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '4.0'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/xiaofu666/FanlianiOS/releases/download/#{s.version}/FLAD.zip" }
    
  s.default_subspecs = 'FLAdSaas'

  s.subspec 'FLAdSaas' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.vendored_frameworks = 'FLAD/FLAdSaas.xcframework'
  end
  
  s.subspec 'FLAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Ads-Fusion-CN-Beta'
    ss.dependency 'Ads-Fusion-CN-Beta/CSJMediation'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdCsjAdapter.xcframework'
  end
  
  s.subspec 'FLAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdGdtAdapter.xcframework'
  end
  
  s.subspec 'FLAdKsAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdKsAdapter.xcframework'
  end
  
  s.subspec 'FLAdJztAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'JADYun'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdJztAdapter.xcframework'
  end
  
  s.subspec 'FLAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'BaiduMobAdSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'FLAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'SFBeiZiSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'FLAdTbAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'SFTanxSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdTbAdapter.xcframework'
  end
  
  s.subspec 'FLAdMsAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'MSMobAdSDK/MS'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMsAdapter.xcframework'
  end
  
  s.subspec 'FLAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'FLAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'MintegralAdSDK/All'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMtgAdapter.xcframework'
  end
  
  s.subspec 'FLAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Ads-Global'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdPangleAdapter.xcframework'
  end
  
  s.subspec 'FLAdMobAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Google-Mobile-Ads-SDK'
    # ss.dependency 'PersonalizedAdConsent'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMobAdapter.xcframework'
  end
  
  s.subspec 'FLAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FBAudienceNetwork'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdMetaAdapter.xcframework'
  end
  
  s.subspec 'FLAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'UnityAds'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdUnityAdapter.xcframework'
  end
  
  s.subspec 'FLAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'VungleAds'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdVungleAdapter.xcframework'
  end
  
  s.subspec 'FLAdTopOnAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'AnyThinkiOS/AnyThinkSDK'
    ss.dependency 'AnyThinkiOS/AnyThinkPangleAdapter'
    ss.dependency 'AnyThinkiOS/AnyThinkAdmobAdapter'
    ss.dependency 'AnyThinkiOS/AnyThinkFacebookAdapter'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdTopOnAdapter.xcframework'
  end
  
  s.subspec 'FLAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'AppLovinSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'FLAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'InMobiSDK/Core'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'FLAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'IronSourceSDK'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdIronsourceAdapter.xcframework'
  end
  
  s.subspec 'FLAdBigoAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'BigoADS'
    ss.dependency 'FLAD/FLAdSaas'
    ss.vendored_frameworks = 'FLAD/FLAdBigoAdapter.xcframework'
  end

end
