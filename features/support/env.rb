require 'appium_lib'
require 'cucumber'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
    {
        caps: {
            deviceName: "iPhone 6",
            platformName: "iOS",
            platformVersion: "12.1",
            app: "/Users/kim_chernov/QAiOSAuto/1xBet.app",
            # automationName: "XCUITest",
            noReset: true,
            unicodeKeyboard: true,
            useNewWDA: true,
            # app: "#{$project_path}/1xBet.test.app",
            #xcodeOrgId: "6UWA23N6D3",
            #xcodeSigningId: "iPhone Developer",
            bundleId: "1xBet.1xBet"
            #newCommandTimeout: "1000",
            #automationName: "UIAutomation",
        }
    }
end

def exist_element?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element)
  rescue
    return false
  end
end
