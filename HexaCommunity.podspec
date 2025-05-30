Pod::Spec.new do |s|
  s.name             = 'HexaSDK'
  s.version          = '1.0.0'
  s.summary          = 'Modular Swift SDK to interact with Hexa backend services.'
  s.description      = <<-DESC
    HexaSDK is a modular Swift SDK providing secure persistence, networking,
    and UI components for Hexa-powered apps. Includes gRPC, Protobuf, DI, and more.
  DESC

  s.homepage         = 'https://github.com/djavan-bertrand/HexaCommunity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hexa Community' => 'contact@hexa-community.com' }
  s.source           = { :git => 'https://github.com/djavan-bertrand/HexaCommunity.git', :tag => s.version.to_s }

  s.platform         = :ios, '13.0'
  s.swift_version    = '6.0'
  s.requires_arc     = true

  s.source_files     = 'Sources/**/*.{swift,h,m}'

  # Include .xcdatamodeld files as resources
  #s.resource_bundles = {
  #  'OctopusCoreResources' => [
  #    'Sources/OctopusCore/Persistence/Database/OctopusModel/OctopusModel.xcdatamodeld',
  #    'Sources/OctopusCore/Persistence/Database/OctopusTracking/OctopusTracking.xcdatamodeld'
  #  ]
  #}

  # External dependencies
  s.dependency 'KeychainAccess', '~> 4.2'
  s.dependency 'SwiftProtobuf', '~> 1.20'
  s.dependency 'gRPC-Swift', '~> 1.23'
end
