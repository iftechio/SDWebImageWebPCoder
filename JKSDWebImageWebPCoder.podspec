Pod::Spec.new do |s|
  s.name             = 'JKSDWebImageWebPCoder'
  s.version          = '0.2.3'
  s.summary          = 'WebP decoder/encoder for SDWebImage coder plugin.'

  s.description      = <<-DESC
This is a SDWebImage coder plugin to support WebP image.
                       DESC

  s.homepage         = 'https://github.com/iftechio/SDWebImageWebPCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogdan Poplauschi' => 'bpoplauschi@gmail.com' }
  s.source           = { :git => 'https://github.com/iftechio/SDWebImageWebPCoder', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.module_map = 'SDWebImageWebPCoder/Module/JKSDWebImageWebPCoder.modulemap'
  
  s.source_files = 'SDWebImageWebPCoder/Classes/**/*', 'SDWebImageWebPCoder/Module/JKSDWebImageWebPCoder.h'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.watchos.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1 WEBP_USE_INTRINSICS=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.dependency 'SDWebImage/Core', '~> 5.0'
  s.dependency 'libwebp', '~> 1.0'
  
end
