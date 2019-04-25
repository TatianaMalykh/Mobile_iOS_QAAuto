require 'appium_lib'
require 'cucumber'
require 'chunky_png'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
    {
        caps: {
            # deviceName: "iPhone 6",
            # platformName: "iOS",
            # platformVersion: "12.1",
            # app: "/Users/kim_chernov/QAiOSAuto/1xBet.app",
            # # automationName: "XCUITest",
            # noReset: true,
            # unicodeKeyboard: true,
            # useNewWDA: true,
            # # app: "#{$project_path}/1xBet.test.app",
            # #xcodeOrgId: "6UWA23N6D3",
            # #xcodeSigningId: "iPhone Developer",
            # bundleId: "1xBet.1xBet"
            # #newCommandTimeout: "1000",
            # #automationName: "UIAutomation",
            "deviceName": "iPhone 5s",
            "platformName": "iOS",
            "platformVersion": "12.1",
            "app": "/Users/kim_chernov/QAiOSAuto/1xBet.app",
            "noReset": "true",
            "unicodeKeyboard": "true",
            "useNewWDA": "true"
        }
    }
end

def visible_element?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element).attribute("visible")
  rescue
    return false
  end
end

def exist_element?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element)
  rescue
    return false
  end
end

def exist_elements?(element,index)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_elements(accessibility_id:"#{element}")[index.to_i]
  rescue
    return false
  end
end

def exist_element_class?(cls,ind,element)
  $driver.set_implicit_wait(0.5)
  elements = find_element(accessibility_id:"#{element}").find_elements(class:"#{cls}")
  begin
    return true if elements[ind]
  rescue
    return false
  end
end


def screen_same?(actual, standard, x_st, y_st, x_len, y_len)
#делаем скриншот экрана
  $driver.screenshot("#{$project_path}/reports/#{actual}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/reports/#{actual}.png")
  image.crop!(x_st, y_st, x_len, y_len)
  image.save("#{$project_path}/reports/#{actual}.png")

  images = [
      ChunkyPNG::Image.from_file("#{$project_path}/reports/#{standard}.png"),
      ChunkyPNG::Image.from_file("#{$project_path}/reports/#{actual}.png")
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

  #FileUtils.rm_r("reports//#{actual}.png")
  #FileUtils.rm_r("reports//#{standard}.png")
# если есть разница
  if length_percent > 0.3
    return false
  else
    return true
  end
end


def screen_of_element(name, element)
# скриним весь экран
  $driver.screenshot("#{$project_path}/reports/#{name}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/reports/#{name}.png")
# вырезаем из скрина экрана скрин нужного элемента
  x = element.rect.x*2
  y = element.rect.y*2
  width = element.rect.width*2
  height = element.rect.height*2
  puts x
  puts y
  puts width
  puts height
  image.crop!(x, y, width, height)
  image.save("#{$project_path}/reports/#{name}.png")
end


def element_same?(actual_element, standard_element, element)
  puts point_x = element.rect.x*2
  puts point_y = element.rect.y*2
  puts width = element.rect.width*2
  puts height = element.rect.height*2
  screen_same?(actual_element, standard_element, point_x, point_y, width, height)
end

def touch_id_1
  puts @driver.touch_id(false)
end

def exist_element_class?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element)
  rescue
    return false
  end
end

def tap_percentage(x_percentage, y_percentage) # тап по процентам
  size = driver.window_size
  puts size
  x_point = size.width * x_percentage
  puts x_point
  y_point = size.height * y_percentage
  puts y_point
  Appium::TouchAction.new.press(x: x_point.to_i, y: y_point.to_i).release.perform
end

def game_search(condition)
  i = 0
  c4et = false
  while !c4et
    elements_sports = find_element(id: "sports-champs_element-0-#{i}_cell")
    element_enabled = false
    puts "Зашли в спорты"
    if elements_sports.attribute("visible") == "true"
      while !element_enabled
        elements_sports.click
        j = 0
        while !element_enabled
          elements_champs = find_element(id: "sports-champs_element-0-#{j}_cell")
          elements_champs.click
          spent_time = 0
          puts "Зашли в игры"
          while exist_element?(id: "games-collection_element-0-0_cell") == false
            sleep (0.5)
            spent_time +=0.5
            break if spent_time > 10
          end
          find_element(id: "games-collection_element-0-0_cell").click
          puts "Зашли внутрь игры"
          sleep(2)
          if condition.call
            puts ("Подходящий элемент найден.")
            c4et = true
            element_enabled = true
          end
          if !element_enabled
            puts ("Смотрим следующий Чемпионат.")
            element = find_element(accessibility_id: "buttonLeft")
            x = element.rect.x
            y = element.rect.y
            Appium::TouchAction.new.press(x: x, y: y).release.perform
            sleep(2)
            element = find_element(accessibility_id: "buttonLeft")
            x = element.rect.x
            y = element.rect.y
            Appium::TouchAction.new.press(x: x, y: y).release.perform
            sleep(2)
          end
          j+=1
        end
        if !element_enabled
          puts ("Смотрим следующущее Событие.")
          element = find_element(accessibility_id: "buttonLeft")
          x = element.rect.x
          y = element.rect.y
          Appium::TouchAction.new.press(x: x, y: y).release.perform
        end
      end
    else
      swipe(start_x: 50, start_y: 400, end_x: 50, end_y: 200)
      puts "Свайпнули вниз, так как элементы кончились"
      i = 0
    end
    i+=1
  end
end