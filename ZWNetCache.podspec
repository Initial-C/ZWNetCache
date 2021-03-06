#
#  Be sure to run `pod spec lint ThemeComponent.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ZWNetCache"
  s.version      = "0.0.2"
  s.summary      = "ZWNetCache is simple and easy to use, expand the individual strong base barrage"
  s.homepage     = "https://github.com/Initial-C"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Initial-C" => "iwilliamchang@outlook.com" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/Initial-C/ZWNetCache.git", :tag => "#{s.version}" }
  s.source_files = "Classes/*.{h,m}", "Classes/**/*.{h,m}"
  s.public_header_files = "Classes/*.h", "Classes/**/*.h"
  # s.exclude_files = "Classes/**/*.{h,m}"
  # s.resource_bundles = {
  #   'ThemeRsources' => ['Classes/ThemeRsources/*.{png,xib,nib,bundle,mov}']
  # }
  s.frameworks   = "UIKit", "MobileCoreServices", "SystemConfiguration"

  # s.resource  = "icon.png"
  s.resources = "Classes/MBProgressHUD/MBProgressHUD.bundle"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"

  # s.library   = "iconv"
  s.libraries = "stdc++.6.0.9", "z.1.2.5", "c++", "z"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
    

end
