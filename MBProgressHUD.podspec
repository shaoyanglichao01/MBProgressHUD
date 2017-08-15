#
#  Be sure to run `pod spec lint MBProgressHUD.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LCSliderView"
  s.version      = "0.0.5"
  s.summary      = "choose the price on that block for ios."
  s.homepage     = "https://github.com/shaoyanglichao01/SliderView.git"
  s.license      = "MIT"
  s.author             = { "lichao" => "shaoyanglichao@126.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/shaoyanglichao01/SliderView.git", :tag => "0.0.5" }
  s.source_files  = "LCSliderView", "LCSliderView/**/*.{h,m}"
   s.framework  = "UIKit"
  s.resources = "LCSliderView/sliderView.bundle"
end
