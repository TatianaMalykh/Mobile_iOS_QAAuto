require 'appium_lib'
require 'cucumber'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
    {
        caps: {
            app: "#{$project_path}/1xBet.test.app",
            platformName: "IOS",
            platformVersion: "11.4",
            deviceName: "321",
            #xcodeOrgId: "6UWA23N6D3",
            #xcodeSigningId: "iPhone Developer",
            bundleId: "1xBet.1xBet",
            #newCommandTimeout: "1000",
            #automationName: "UIAutomation",
            noReset:true,
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
