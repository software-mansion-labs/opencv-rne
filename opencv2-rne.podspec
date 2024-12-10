Pod::Spec.new do |s|
    s.name = "opencv-rne"
    s.version = "0.1.0"
    s.summary = "OpenCV for iOS, compatible with react-native-executorch."
    s.homepage = "https://github.com/software-mansion-labs/opencv-rne.git"
    s.authors = { "Jakub Mroz" => "jakub.mroz@swmansion.com" }
    s.license = { :type => 'Apache License 2.0', :file => 'LICENSE' }
    s.source = { 
      :git => "https://github.com/software-mansion-labs/opencv-rne.git", 
      :tag => "#{s.version}"
    }
    s.platform = :ios
    s.ios.deployment_target = "15.1"
    s.preserve_paths = "opencv2.xcframework"
    s.vendored_frameworks = "opencv2.xcframework"
    s.requires_arc = false
    s.ios.frameworks = [
        "AssetsLibrary", "AVFoundation", "CoreGraphics",
        "CoreMedia", "CoreVideo", "Foundation",
        "QuartzCore", "UIKit"
    ]
    s.libraries = "c++", "stdc++"
    s.pod_target_xcconfig = {
        "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
        "CLANG_CXX_LIBRARY" => "libc++",
    }
end
