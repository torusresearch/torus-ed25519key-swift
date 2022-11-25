Pod::Spec.new do |s|
  s.name             = 'TorusEd25519Key'
  s.version          = '1.0.0'
  s.summary          = 'Use to get ED25519Key for a private key'
  s.homepage         = 'https://github.com/torusresearch/torus-ed25519key-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dhruv@tor.us' => 'dhruv@tor.us' }
  s.source           = { :git => 'https://github.com/torusresearch/torus-ed25519key-swift.git', :tag => s.version.to_s }
  s.ios.deployment_target  = "13.0"
  s.osx.deployment_target  = "10.15"
  s.source_files = "Sources/TorusEd25519Key/*.{swift}""
  s.dependency 'TweetNacl', '~> 1.0.0'
end
