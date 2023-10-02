#
# Be sure to run `pod lib lint zolve-flutter-module-pod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "zolve-flutter-module-pod"
  s.version          = '0.0.1'
  s.summary          = "CocoaPod implementation of Zolve Flutter Module"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
  Test Zolve Flutter Module.
                       DESC

  s.homepage         = "https://github.com/sachin-zolve/zolve_flutter_module"

  s.license          = 'MIT'
  s.author           = { "zolve-flutter-module" => "sachinv@zolve.com"}
  s.source           = { :git => "https://github.com/sachin-zolve/zolve_flutter_module.git", :tag => s.version.to_s }
  s.source_files     = ['ios/*']


  s.platform     = :ios, '10.0'
  s.exclude_files = 'UpdatePod.sh'


  #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.prepare_command = <<-CMD
  #   chmod 777 ./Pod/SelectDefaultXcode.sh
  #   sh ./Pod/SelectDefaultXcode.sh
  # CMD

end
