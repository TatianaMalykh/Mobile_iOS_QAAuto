require 'appium_lib'
require 'cucumber'
require 'chunky_png'

$project_path = ENV["IOS_PROJECT_PATH"]

def caps1
    {
        caps: {
            #"deviceName": "iPhone XR",
            "deviceName": "iPhone 5s",
            "platformName": "iOS",
            "platformVersion": "12.1",
            "app": "/Users/sergeyignatov/QAIOSAuto/1xBet.test-8.app",
            #"automationName": "XCUITest",
            "noReset": "true",
            "unicodeKeyboard": "true",
            "useNewWDA": "true",
            "allowTouchIdEnroll":"true"

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

def visible_element?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element).attribute("visible")
  rescue
    return false
  end
end

def visible_displayed?(element)
  $driver.set_implicit_wait(0.5)
  begin
    return true if find_element(element).displayed?
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
        y  = element.rect.y
        Appium::TouchAction.new.press(x: x, y: y).release.perform
        sleep(2)
        element = find_element(accessibility_id: "buttonLeft")
        x = element.rect.x
        y  = element.rect.y
        Appium::TouchAction.new.press(x: x, y: y).release.perform
        sleep(2)
      end
      j+=1
    end
    if !element_enabled
      puts ("Смотрим следующущее Событие.")
      element = find_element(accessibility_id: "buttonLeft")
      x = element.rect.x
      y  = element.rect.y
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

def game_search_tiny(condition)
    element_enabled = false
      while !element_enabled
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
            element_enabled = true
          end
          if !element_enabled
            puts ("Смотрим следующий Чемпионат.")
            element = find_element(accessibility_id: "buttonLeft")
            x = element.rect.x
            y  = element.rect.y
            Appium::TouchAction.new.press(x: x, y: y).release.perform
            sleep(2)
            element = find_element(accessibility_id: "buttonLeft")
            x = element.rect.x
            y  = element.rect.y
            Appium::TouchAction.new.press(x: x, y: y).release.perform
            sleep(2)
          end
          j+=1
        end
      end
end

def try_url_3
  $Dev_h = { "Samsung_Galaxy_Tab"=>"1229557",
             "Samsung_Galaxy_S7"=>"67820953",
             "Samsung_Galaxy_J1"=>"1197599",
             "Huaiwei_P_smart"=>"73020445",
             "Huaiwei_VNS_L21"=>"73020693",
             "Huaiwei_Y541_U02"=>"73021487",
             "Xiaomi_Mi_A1"=>"73021691",
             "Xiaomi_Redmi_4A"=>"73021865",
             "Meizu_M3_note"=>"73022083",
             "Meizu_m6note"=>"73022811",
             "Techno_LA7"=>"73023053",
             "HTC_Nexus_9"=>"73029561",
             "BQ_5012L"=>"73029769"
  }

  uri = URI.parse("https://mobegm.top/MobileOpen/Mobile_PromoShop_ListPromo2")

  body = {
      "partner": 1,
      "Language": "ru",
      "Params": [1],
      "UserIdBonus": 99033707,
      "UserId": 99033707
  }
  puts $Dev_h[ENV["device"]]

# Create the HTTP objects
  https = Net::HTTP.new(uri.host, uri.port)
  https.use_ssl = true
  request = Net::HTTP::Post.new(uri.request_uri, initheader = {'Content-Type' =>'application/json'})
  request.body = body.to_json
# Send the request
  response = https.request(request)
  puts response.code
  content = response.body
  body_resp = JSON.parse(content)
  gt = (body_resp["Data"] || [])
  gt_2 = gt.to_json
  array = gt.map {|gt_2| gt_2[1]}
  FileUtils.rm("#{$project_path}/reports/body_PROMO.txt") if File.exist? ("#{$project_path}/reports/body_PROMO.txt")
  File.open("#{$project_path}/reports/body_PROMO.txt", "w") do |file|
    file.puts array
    file.close
    puts ("Записали")
  end

end


def swipe_in_menu_on_high_of_element(id)
  element = find_element(id:id)
  dimention= element.location.y
  dimention_1 = element.size.height
  start = (dimention_1.to_f/driver.window_size.height.to_f)*2
  rez = dimention_1.to_f/driver.window_size.height.to_f
  swipe(start_x: 50, start_y: dimention+dimention_1, end_x: 50, end_y: dimention, duration: 300)
end

def swipe_in_menu_on_high_of_element_of_class(myclass_1,myclass_2)
  element = find_elements(class:myclass_1)[1].find_elements(class:myclass_2)
  dimention= element[0].location.y
  dimention_1 = element[0].size.height
  puts  dimention+dimention_1
  puts  dimention
  swipe(start_x: 50, start_y: dimention+dimention_1, end_x: 50, end_y: dimention, duration: 300)
end