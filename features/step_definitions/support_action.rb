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
  $driver.screenshot("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
  image = ChunkyPNG::Image.from_file("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
  x_st = (($driver.window_size.width*x_st.to_f)*2).to_i
  y_st = (($driver.window_size.height*y_st.to_f)*2).to_i
  x_len = (($driver.window_size.width*x_len.to_f)*2).to_i
  y_len = (($driver.window_size.height*y_len.to_f)*2).to_i
  image.crop!(x_st, y_st, x_len, y_len)
  image.save("#{$project_path}/reports/#{ENV["device"]}/#{name}.png")
end




