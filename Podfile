platform :osx, '10.11'

target 'QLMarkdownGFM' do
  pod 'ZWEmoji', git: "https://github.com/zachwaugh/ZWEmoji.git"
end

# Workaround
# CocoaPods configures deployment target to '10.6' for ZWEmoji
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.11'
    end
  end
end