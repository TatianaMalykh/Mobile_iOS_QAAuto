require 'appium_lib'
require 'cucumber'
require 'chunky_png'

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

def exist_element_class?(cls,ind,element)
  $driver.set_implicit_wait(0.5)
  element = find_element(element).find_elements(cls)
  begin
    return true if element[ind]
  rescue
    return false
  end
end

def screen_of_element(name, element)
# скриним весь экран
  $driver.screenshot("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
# вырезаем из скрина экрана скрин нужного элемента
  x = element.rect.x
  y = element.rect.y
  width = element.rect.width
  height = element.rect.height
  image.crop!(x, y, width, height)
  image.save("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
end


def element_same?(actual_element, standard_element, element)
  puts point_x = element.rect.x
  puts point_y = element.rect.y
  puts width = element.rect.width
  puts height = element.rect.height
  screen_same?(actual_element, standard_element, point_x, point_y, width, height)
end

