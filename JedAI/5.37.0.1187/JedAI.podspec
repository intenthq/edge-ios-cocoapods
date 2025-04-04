Pod::Spec.new do |s|
    s.name         = "JedAI"
    s.version      = "5.37.0.1187"
    s.module_name  = "JedAI"
    s.summary      = "Anagog JedAI SDK iOS"
    s.homepage     = "https://www.anagog.com"
    s.license      = { :type => 'Commercial', :text => <<-LICENSE
        Anagog SDK License Notice

        This SDK is not open source software or public software. It is the proprietary software of Anagog Ltd. and, unless otherwise agreed in writing with Anagog Ltd., no rights are granted to you in respect of the SDK.
        This SDK is subject to, and may only be used in accordance with the terms of (and obligations imposed by) a separate commercial license agreement with Anagog Ltd.
        You may not copy or use this SDK in any manner without first entering into an agreement with and obtaining a license from Anagog Ltd.
        In order to request a license to use this SDK and an activation key from Anagog Ltd., please contact Anagog Ltd. directly at info@anagog.com.
        Anagog Ltd. reserves the right, in its sole discretion, to grant or reject requests for licenses to this SDK.
     LICENSE
    }
    s.author       = "Anagog Ltd"
    s.platform     = :ios
    s.platform     = :ios, "12.0"
    s.ios.deployment_target = "11.0"
    s.source       = { :http => "https://dl.anagog.com/ios/cocoapods/5.37.0/JedAI-5.37.0.1187.zip" }
    s.swift_version = "5.0"
    s.default_subspec = "Core"

    s.subspec "SwiftProtobuf" do |sp|
        sp.vendored_frameworks="Frameworks/SwiftProtobuf.xcframework"
    end

    s.subspec "Core" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIKit.xcframework"
        sp.dependency "JedAI/SwiftProtobuf"
    end
    s.subspec "Timeline" do |sp|
        sp.vendored_frameworks="Frameworks/JedAITimelineKit.xcframework"
        sp.dependency "JedAI/POI"
    end
    s.subspec "Profile" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIProfileKit.xcframework"
        sp.dependency "JedAI/POI"
        sp.dependency "JedAI/Trip"
    end
    s.subspec "POI" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIPOIKit.xcframework"
    end
    s.subspec "Schedule" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIScheduleKit.xcframework"
    end
    s.subspec "Trip" do |sp|
        sp.vendored_frameworks="Frameworks/JedAITripKit.xcframework"
    end
    s.subspec "Geofence" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIGeofenceKit.xcframework"
        sp.dependency "JedAI/SwiftProtobuf"
        sp.dependency "JedAI/POI"
    end
    s.subspec "Metrics" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIMetricsKit.xcframework"
        sp.dependency "JedAI/Config"
        sp.dependency "JedAI/POI"
        sp.dependency "JedAI/Lambda"
    end
    s.subspec "JEMA" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIJEMAKit.xcframework"
        sp.dependency "JedAI/Lambda"
        sp.dependency "JedAI/Geofence"
        sp.dependency "JedAI/Metrics"
        sp.dependency "JedAI/Report"
    end
    s.subspec "UI" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIUIKit.xcframework"
        sp.dependency "JedAI/JEMA"
    end
    s.subspec "App" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIAppKit.xcframework"
        sp.dependency "JedAI/JEMA"
        sp.dependency "JedAI/Geofence"
        sp.dependency "JedAI/POI"
        sp.dependency "JedAI/Metrics"
        sp.dependency "JedAI/Report"
        sp.dependency "JedAI/Config"
        sp.dependency "JedAI/Signal"
        sp.dependency "JedAI/NetD9s"
    end
    s.subspec "Lambda" do |sp|
        sp.vendored_frameworks="Frameworks/JedAILambdaKit.xcframework"
        sp.dependency "JedAI/Geofence"
    end
    s.subspec "Report" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIReportKit.xcframework"
        sp.dependency "JedAI/POI"
        sp.dependency "JedAI/Config"
    end
    s.subspec "Config" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIConfigKit.xcframework"
    end
    s.subspec "Toolbox" do |sp|
        sp.vendored_frameworks="Frameworks/JedAIToolboxKit.xcframework"
        sp.dependency "JedAI/JEMA"
        sp.dependency "JedAI/Metrics"
        sp.dependency "JedAI/App"
        sp.dependency "JedAI/Report"
    end
    s.subspec "NetD9s" do |sp|
        sp.vendored_frameworks="Frameworks/JedAINetD9sKit.xcframework"
        sp.dependency "JedAI/Config"
    end
    s.subspec "Signal" do |sp|
        sp.vendored_frameworks="Frameworks/JedAISignalKit.xcframework"
        sp.dependency "JedAI/Config"
    end
end
                
