require 'appium_lib'
require 'cucumber'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
  {
      caps: {
          app: "/Users/sergeyignatov/QAIOSAuto/Mobile_iOS_QAAuto/1xBet.app",
          platformName: "IOS",
          platformVersion: "12.1",
          deviceName: "iPhone XR",
          #xcodeOrgId: "6UWA23N6D3",
          #xcodeSigningId: "iPhone Developer",
          bundleId: "1xBet.1xBet",
          #newCommandTimeout: "1000",
          #automationName: "UIAutomation",
          noReset:true,
          #automationName: "XCUITest",
          useNewWDA: true,
          unicodeKeyboard:true
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
