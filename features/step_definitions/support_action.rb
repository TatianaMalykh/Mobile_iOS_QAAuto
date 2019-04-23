require 'fileutils'
require 'appium_lib'
require 'cucumber'
require 'chunky_png'


When(/^Ждем "([^"]*)" секунд\(ы\)$/) do |second|
  sleep (second.to_i)
end

When(/^Ждем появления элемента "([^"]*)" с id "([^"]*)", но не более "([^"]*)" секунд$/) do |name, id, second|
  $driver.set_implicit_wait(1)
  spent_time = 0
  until exist_element?(accessibility_id: id) do
# sleep (0.5)
    spent_time +=0.5
    if spent_time > second.to_i
      raise "Элемент #{name} не появился после #{spent_time} секунд ожидания!"
    end
  end
  puts "Элемент #{name} появился спустя #{spent_time} секунд."
end

When(/^Записываем в файл всё значение текста элемента "([^"]*)" с id "([^"]*)"$/) do |name, id|
  FileUtils.rm("#{$project_path}/state.txt") if File.exist? ("#{$project_path}/state.txt")
  elements = find_element(id: id)
  if elements.value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/state.txt", "w") do |file|
      file.puts elements.value
      file.close
      puts ("Запомнили значение #{elements.value} элемента #{name}.")
    end
  end
end

When(/^Пользователь нажимает на экранной клавиатуре "([^"]*)" с id "([^"]*)"$/) do |name, id|
  find_element(accessibility_id: id).click
  puts("Нажали #{name} на экранной клавиатуре")
end

When(/^Делаем скриншот элемента "([^"]*)" с id "([^"]*)"$/) do |name, id|
  element = find_element(id: id)
  screen_of_element(name, element)
end

When(/^Пользователь видит окно об успешности регистрации с логином и паролем$/) do
  outputs = find_element(id: "alert-controller_alert_view").find_elements(class: "XCUIElementTypeStaticText")
  output = outputs[-1].value
  File.open("out.txt", "w") {|f| f.write("#{output}")}
  find_element(accessibility_id: "OK").click
end

When(/^Проверяем соответствие выданного логина автоподставленномму$/) do
  str = File.new("out.txt").readlines[0]
  login = (str[-9..-2])
  username = find_element(id: "authorization_login_text-field").value
  password = find_element(id: "authorization_password_text-field")
  if login == username and password.value.empty? == false
    puts "Логин совпадает с выданным, а поле пароля заполнено"
  else
    fail "Логин не совпадает с выданным и/или поле пароля пустое"
  end
  File.delete("out.txt")
end

When(/^Делаем скриншот экрана "([^"]*)" и обрезаем его начиная с x "([^"]*)" y "([^"]*)" на расстояние x "([^"]*)" и y "([^"]*)"$/) do |name, x_st, y_st, x_len, y_len|
#делаем скриншот экрана
  $driver.screenshot("#{$project_path}/#{name}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/#{name}.png")
  x_st = (($driver.window_size.width*x_st.to_f)*2).to_i
  y_st = (($driver.window_size.height*y_st.to_f)*2).to_i
  x_len = (($driver.window_size.width*x_len.to_f)*2).to_i
  y_len = (($driver.window_size.height*y_len.to_f)*2).to_i
  image.crop!(x_st, y_st, x_len, y_len)
  image.save("#{$project_path}/reports/#{name}.png")
end

When(/^Пользователь авторизуется с аккаунтом без средств название телефона "([^"]*)"$/) do  |udid_phone|
  $accounts_hash = {
      "Samsung_Galaxy_Tab"=>"101173133_WttWn2",
      "Samsung_Galaxy_S7"=>"101173975_C5t9ja",
      "Samsung_Galaxy_J1"=>"101174187_WCguDL",
      "Huaiwei_P_smart"=>"101174351_GRfFC8",
      "Huaiwei_VNS_L21"=>"101174525_7nxzfw",
      "Huaiwei_Y541_U02"=>"101174681_V3GbRL",
      "Xiaomi_Mi_A1"=>"101174873_RiXTzc",
      "Xiaomi_Redmi_4A"=>"101175043_FkEhtv",
      "Meizu_M3_note"=>"101735681_pFgjLT",
      "Meizu_m6note"=>"101735827_ffwSMi",
      "Techno_LA7"=>"101735941_UJTjUA",
      "HTC_Nexus_9"=>"101736029_fvKhaW",
      "BQ_5012L"=>"101736149_RbhWQn"
  }
  #udid = ENV["device"]
   udid = udid_phone
  login = $accounts_hash[udid].split("_")[0]
  password = $accounts_hash[udid].split("_")[1]
  find_element(accessibility_id: "authorization_login_text-field").send_keys(login)
  find_element(accessibility_id: "authorization_password_text-field").send_keys(password)

  find_element(accessibility_id: "authorization_auth_button").click
  puts ("Авторизовались с логином #{login} и паролем #{password}")
end

When(/^Пользователь авторизуется с аккаунтом со средствами название телефона "([^"]*)"$/) do |udid_phone|
  $accounts_money_hash = {
      "Samsung_Galaxy_Tab"=>"1229557_qwe890qwe",
      "Samsung_Galaxy_S7"=>"67820953_gkSk7v",
      "Samsung_Galaxy_J1"=>"1197599_qwe890qwe",
      "Huaiwei_P_smart"=>"73020445_ayfBgw",
      "Huaiwei_VNS_L21"=>"73020693_tXtpBQ",
      "Huaiwei_Y541_U02"=>"73021487_S1r9rG",
      "Xiaomi_Mi_A1"=>"73021691_bj6t3R",
      "Xiaomi_Redmi_4A"=>"73021865_hqcJ9u",
      "Meizu_M3_note"=>"73022083_KWwGWD",
      "Meizu_m6note"=>"73022811_BFxEGv",
      "Techno_LA7"=>"73023053_EFsatQ",
      "HTC_Nexus_9"=>"73029561_yk4e3u",
      "BQ_5012L"=>"73029769_4VvGYQ"
  }
  udid = udid_phone
  #udid = ENV["device"]
  login = $accounts_money_hash[udid].split("_")[0]
  password = $accounts_money_hash[udid].split("_")[1]
  find_element(accessibility_id: "authorization_login_text-field").send_keys(login)
  find_element(accessibility_id: "authorization_password_text-field").send_keys(password)
  if @driver.is_keyboard_shown()
    @driver.hide_keyboard(nil, :tapOutside)
  end
  find_element(accessibility_id: "authorization_auth_button").click
  puts ("Авторизовались с логином #{login} и паролем #{password}")
end

When(/^Ждем появления элемента "([^"]*)" с классом "([^"]*)", но не более "([^"]*)" секунд$/) do |name, myclass, second|
  $driver.set_implicit_wait(1)
  spent_time = 0
  until exist_element?(class: myclass) do
# sleep (0.5)
    spent_time +=0.5
    if spent_time > second.to_i
      raise "Элемент #{name} не появился после #{spent_time} секунд ожидания!"
    end
  end
  puts "Элемент #{name} появился спустя #{spent_time} секунд."
end

When(/^Записываем в файл значение текста элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", находящегося в элементе с id "([^"]*)"$/) do |name, class1, index, id|
  FileUtils.rm("#{$project_path}/memory.txt") if File.exist? ("#{$project_path}/memory.txt")
  elements = find_element(id: id).find_elements(class: class1)
  if elements[index.to_i].value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/memory.txt", "w") do |file|
      file.puts elements[index.to_i].value
      file.close
      puts ("Запомнили значение #{elements[index.to_i].value} элемента #{name}.")
    end
  end
end

When(/^Делаем скриншот элемента "([^"]*)" с id "([^"]*)" и индексом "([^"]*)", вложенный в элемент с id "([^"]*)"$/) do |name, id2, index, id|
  elements = find_element(id: id).find_elements(id: id2)
  element = elements[index.to_i]
  screen_of_element(name, element)
end

When(/^Делаем скриншот элемента "([^"]*)" с классом "([^"]*)" и индексом "([^"]*)", вложенный в элемент с id "([^"]*)"$/) do |name, myclass, index, id|
  elements = find_element(id: id).find_elements(class: myclass)
  element = elements[index.to_i]
  screen_of_element(name, element)
end

When(/^Записываем в файл с названием "([^"]*)" значение текста элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", находящегося в элементе с id "([^"]*)"$/) do |filename, name, class1, index, id|
  FileUtils.rm("#{$project_path}/#{filename}.txt") if File.exist? ("#{$project_path}/#{filename}.txt")
  elements = find_element(id: id).find_elements(class: class1)
  if elements[index.to_i].value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/#{filename}.txt", "w") do |file|
      file.puts elements[index.to_i].value
      file.close
      puts ("Запомнили значение #{elements[index.to_i].value} элемента #{name}.")
    end
  end
end

When(/^Записываем в файл с названием "([^"]*)" значение текста элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)" и позицией в массиве "([^"]*)", находящегося в элементе с id "([^"]*)"$/) do |filename, name, class1, index, poz, id|
  # Шаг для записи в файл слова в сообщении алерте например номер купона или чего-то такого
  FileUtils.rm("#{$project_path}/#{filename}.txt") if File.exist? ("#{$project_path}/#{filename}.txt")
  elements = find_element(id: id).find_elements(class: class1)
  if elements[index.to_i].value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/#{filename}.txt", "w") do |file|
      text = elements[index.to_i].value.split(" ")
      file.puts text[poz.to_i]
      file.close
      puts ("Запомнили значение #{text[poz.to_i]} элемента #{name}.")
    end
  end
end

When(/^Записываем в файл с названием "([^"]*)" значение текста элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", находящегося в элементе с классом "([^"]*)" и индексом "([^"]*)"$/) do |filename, name, class1, index, class2,index2|
  FileUtils.rm("#{$project_path}/#{filename}.txt") if File.exist? ("#{$project_path}/#{filename}.txt")
  elements = find_element(class: class2)[index2.to_i].find_elements(class: class1)
  if elements[index.to_i].value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/#{filename}.txt", "w") do |file|
      file.puts elements[index.to_i].value
      file.close
      puts ("Запомнили значение #{elements[index.to_i].value} элемента #{name}.")
    end
  end
end

When(/^Записываем в файл с названием "([^"]*)" всё значение текста элемента "([^"]*)" с id "([^"]*)"$/) do |filename,name, id|
  FileUtils.rm("#{$project_path}/#{filename}.txt") if File.exist? ("#{$project_path}/#{filename}.txt")
  elements = find_element(id: id)
  if elements.value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/#{filename}.txt", "w") do |file|
      file.puts elements.value
      file.close
      puts ("Запомнили значение #{elements.value} элемента #{name}.")
    end
  end
end

When(/^Пользователь нажимает элемент "([^"]*)", расположенный на экране по х "([^"]*)" и у "([^"]*)"$/) do |name, x, y|
# sleep(5)
  tap_percentage(x.to_f, y.to_f)
  puts("Попытались нажать #{name}")
end