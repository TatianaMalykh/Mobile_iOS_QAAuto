
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
  FileUtils.rm("#{$project_path}/reports/state.txt") if File.exist? ("#{$project_path}/reports/state.txt")
  elements = find_element(id: id)
  if elements.value.empty?
    raise ("Для данного элемента текст не задан!")
  else
    File.open("#{$project_path}/reports/state.txt", "w") do |file|
      file.puts elements.value
      file.close
      puts ("Запомнили значение #{elements.value} элемента #{name}.")
    end
  end
end


When(/^Делаем скриншот элемента "([^"]*)" с id "([^"]*)"$/) do |name, id|
  element = find_element(id: id)
  screen_of_element(name, element)
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




