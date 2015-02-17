Pod::Spec.new do |s|
  s.name         = 'venmo-ios-colors'
  s.version      = '0.2.0'
  s.summary      = 'Venmo\'s color palette'
  s.description   = <<-DESC
                   UIColors for the Venmo app.
                   DESC
  s.homepage     = 'https://www.github.com/venmo/venmo-ios-colors'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Venmo' => 'ios@venmo.com'}
  s.source       = { :git => 'https://github.com/venmo/venmo-ios-colors.git', :tag => "v#{s.version}"}
  s.source_files = 'UIColor+VenmoColors.{h,m}'
  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.dependency 'Colours', '~> 5.0'
end
