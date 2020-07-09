Pod::Spec.new do |s|
  s.name                = 'PSPDFKit'
  s.version             = '9.5.0'
  s.homepage            = 'https://pspdfkit.com'
  s.documentation_url   = 'https://pspdfkit.com/guides/ios/current'
  s.license             = { :type => 'Commercial', :file => 'PSPDFKit.xcframework/LICENSE' }
  s.author              = { 'PSPDFKit GmbH' => 'support@pspdfkit.com' }
  s.summary             = 'The Best Way to Handle PDF Documents on iOS.'

  s.description         = <<-DESC
                          A high-performance viewer, extensive annotation and document editing tools, digital signatures, and more.
                          DESC

  s.platform            = :ios, '12.0'
  s.source              = { :http => 'https://customers.pspdfkit.com/pspdfkit-ios/9.5.0.zip' }

  s.library             = 'z', 'sqlite3', 'xml2', 'c++'
  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/PSPDFKit/**"',
                            'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.frameworks          = 'QuartzCore', 'CoreText', 'CoreMedia', 'MediaPlayer', 'AVFoundation', 'ImageIO', 'MessageUI',
                          'CoreGraphics', 'Foundation', 'CFNetwork', 'MobileCoreServices', 'SystemConfiguration',
                          'Security', 'UIKit', 'AudioToolbox', 'QuickLook', 'CoreTelephony',
                          'Accelerate', 'CoreImage'
  s.requires_arc        = true
  s.swift_version       = '5.0'
  s.module_name         = 'PSPDFKitSDK'

  s.default_subspec     = 'Core'

  s.subspec 'Core' do |core|
    core.preserve_paths      = 'PSPDFKit.xcframework', 'PSPDFKitUI.xcframework', 'PSPDFKit.dSYMs/PSPDFKit.framework.ios-arm64.dSYM', 'PSPDFKit.dSYMs/PSPDFKit.framework.ios-x86_64-maccatalyst.dSYM', 'PSPDFKit.dSYMs/PSPDFKit.framework.ios-x86_64-simulator.dSYM', 'PSPDFKitUI.dSYMs/PSPDFKitUI.framework.ios-arm64.dSYM', 'PSPDFKitUI.dSYMs/PSPDFKitUI.framework.ios-x86_64-maccatalyst.dSYM', 'PSPDFKitUI.dSYMs/PSPDFKitUI.framework.ios-x86_64-simulator.dSYM'
    core.vendored_frameworks = 'PSPDFKit.xcframework', 'PSPDFKitUI.xcframework'
  end
end
