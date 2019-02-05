require 'appium_lib'
require 'cucumber'
require 'chunky_png'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
  {
      caps: {
          app: "/Users/sergeyignatov/QAIOSAuto/1xBet.app",
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

def exist_element_class?(cls,ind,element)
  $driver.set_implicit_wait(0.5)
  element= find_element(element).find_elements(cls)
  begin
    return true if element[ind]
  rescue
    return false
  end
end


def screen_same?(actual, standard, x_st, y_st, x_len, y_len)
#делаем скриншот экрана
  $driver.screenshot("#{$project_path}/reports/#{ENV["device"]}/#{actual}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/reports/#{ENV["device"]}/#{actual}.png")
  image.crop!(x_st, y_st, x_len, y_len)
  image.save("#{$project_path}/reports/#{ENV["device"]}/#{actual}.png")

  images = [
      ChunkyPNG::Image.from_file("#{$project_path}/reports/#{ENV["device"]}/#{standard}.png"),
      ChunkyPNG::Image.from_file("#{$project_path}/reports/#{ENV["device"]}/#{actual}.png")
  ]
  diff = []
  images.first.height.times do |y|
    images.first.row(y).each_with_index do |pixel, x|
      diff << [x,y] unless pixel == images.last[x,y]
    end
  end

  puts "pixels (total): #{images.first.pixels.length}"
  puts "pixels changed: #{diff.length}"
  length_percent = (diff.length.to_f / images.first.pixels.length) * 100
  puts "pixels changed (%): #{length_percent}%"

  FileUtils.rm_r("reports/#{ENV["device"]}/#{actual}.png")
  FileUtils.rm_r("reports/#{ENV["device"]}/#{standard}.png")
# если есть разница
  if length_percent > 0.3
    return false
  else
    return true
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

