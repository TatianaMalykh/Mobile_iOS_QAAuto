require 'fileutils'
require 'appium_lib'
require 'cucumber'

When(/^Проверяем наличие элемента "([^"]*)" с id "([^"]*)"$/) do |name, id_name|
  if exist_element?(accessibility_id: id_name)
    puts ("Есть элемент #{name}.")
  else
    raise "Нет элемента #{name}!"
  end
end
When(/^Проверяем наличие элементов "([^"]*)" с name "([^"]*)" и выводим их количество в лог$/) do |name, name1|
  if exist_element?(name: name1)
    elements = find_elements(name: name1)
    kol_el = elements.size
    puts ("На экране одновременно существует #{kol_el} элементов #{name}.")
  else
    raise "Нет элементов #{name}!"
  end
end

When(/^Проверяем, что в элементе "([^"]*)" с id "([^"]*)" есть текст$/) do |name, id|
  if find_element(accessibility_id: id).text.empty?
    raise("Текста нет!")
  else
    text = find_element(accessibility_id: id).value
    puts("Для элемента #{name} задан текст #{text}")
  end
end

When(/^Проверяем отсутствие элемента "([^"]*)" с id "([^"]*)"$/) do |name, id|
  $driver.set_implicit_wait(1)
  if exist_element?(accessibility_id: id)
    raise "Есть элемент #{name}!"
  else
    puts ("Нет элемента #{name}.")
  end
end

When(/^Проверяем, что в элементе "([^"]*)" с id "([^"]*)" нет текста$/) do |name, id|
  if find_element(accessibility_id: id).value.empty?
    puts("Текста нет!")
  else
    text = find_element(accessibility_id: id).value
    raise("Для элемента #{name} задан текст #{text}")
  end
end


When(/^Проверяем, что значение всего текста элемента "([^"]*)" с id "([^"]*)" соответствует ранее записанному$/) do |name, id|
  element = find_element(accessibility_id: id)
  val_element = element.value

  if val_element.empty?
    raise ("Для элемента #{name} текст не задан!")
  else
    memory_file = File.new("#{$project_path}/state.txt")
    val_memory = memory_file.read.chomp!
    if val_memory == val_element
      puts ("Значение #{val_memory} равно значению #{val_element}.")
    else
      raise ("Значение #{val_memory} НЕ равно значению #{val_element}!")
    end
  end
end


When(/^Проверяем наличие элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенного в элемент id "([^"]*)"$/) do |name,my_class,index, id|
  element = find_element(accessibility_id: id).find_elements(class:my_class)
  if element[index.to_i].enabled?
    puts ("Есть элемент #{name}.")
  else
    raise "Нет элемента #{name}!"
  end
end

When(/^Проверяем, что значение всего текста элемента "([^"]*)" с id "([^"]*)" не соответствует ранее записанному$/) do |name, id|
  element = find_element(accessibility_id: id)
  val_element = element.value

  if val_element.empty?
    raise ("Для элемента #{name} текст не задан!")
  else
    memory_file = File.new("#{$project_path}/state.txt")
    val_memory = memory_file.read.chomp!
    if val_memory != val_element
      puts ("Значение #{val_memory} НЕ равно значению #{val_element}.")
    else
      raise ("Значение #{val_memory}  равно значению #{val_element}!")
    end
  end
end


When(/^Проверяем, что скриншот "([^"]*)" не совпадает с новым скриншотом "([^"]*)" элемента с id "([^"]*)"$/) do |standard_element, actual_element, id|
  element = find_element(accessibility_id: id)
  if element_same?(actual_element, standard_element, element)
    raise "Скриншоты совпали!"
  else
    puts "Скриншоты не совпали."
  end
end

When(/^Проверяем, что скриншот "([^"]*)" совпадает с новым скриншотом "([^"]*)" элемента с id "([^"]*)"$/) do |standard_element, actual_element, id|
  element = find_element(accessibility_id: id)
  if element_same?(actual_element, standard_element, element)
    puts "Скриншоты совпали!"
  else
    raise "Скриншоты не совпали."
  end
end

When(/^Проверяем, что в элементе "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложнного в элемент с id "([^"]*)", есть текст$/) do |name, my_class,index, id|
  element = find_element(accessibility_id: id).find_elements(class:my_class)
  if element[index.to_i].value?
    puts "В элементе есть текст #{element[index.to_i].value}"
  else
    raise "В элементе нет текста"
  end
end


When(/^Проверяем, что у элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложнного в элемент с id "([^"]*)", есть лейбл$/) do |name, my_class,index, id|
  element = find_element(accessibility_id: id).find_elements(class:my_class)
  if element[index.to_i].label?
    puts "В элементе есть текст #{element[index.to_i].value}"
  else
    raise "В элементе нет текста"
  end
end


When(/^Проверяем, что скриншот "([^"]*)" не совпадает с новым "([^"]*)" с расположением по x "([^"]*)" y "([^"]*)" обрезанным на x "([^"]*)" и y "([^"]*)"$/) do |standard, actual, x_st, y_st, x_len, y_len|
  x_stt = (($driver.window_size.width*x_st.to_f)*2).to_i
  y_stt = (($driver.window_size.height*y_st.to_f)*2).to_i
  x_lent = (($driver.window_size.width*x_len.to_f)*2).to_i
  y_lent = (($driver.window_size.height*y_len.to_f)*2).to_i
  if screen_same?(actual, standard, x_stt, y_stt, x_lent, y_lent)
    raise "Скриншоты совпали!"
  else
    puts "Скриншоты не совпали."
  end
end

When(/^ПРОВЕРКА НА ОБНОВЛНИЕ$/) do
  # ВРЕМЕННЫЙ ОБХОД ОБНОВЛЕНИЯ!!!!!!!!!!!
    spent_time = 0
     until exist_element?(accessibility_id:"alert-controller_alert_view") do
      spent_time +=0.5
      if spent_time > 7
        puts "ALERT  не появился после #{spent_time} секунд ожидания!"
        break
      end
    end
    puts "Элемент появился спустя #{spent_time} секунд."
    if exist_element?(accessibility_id:"alert-controller_alert_view")
      elements = find_element(accessibility_id: "alert-controller_alert_view").find_elements(class: "XCUIElementTypeButton")
      elements[0].click
      puts "Нажали элемент"
    else
      puts "Слава богу нет дурацкого алерта об обновлении,ура!"
    end
end

When(/^Провряем что в Поле Логин соответствуют значениям введенным для аккаунта "([^"]*)"$/) do |udid_phone|
  udid = udid_phone
  #udid = ENV["device"]
  puts login = $accounts_hash[udid].split("_")[0]
  puts find_element(accessibility_id: "authorization_login_text-field").value.to_s
   hash_value = find_element(accessibility_id: "authorization_login_text-field").value.to_s
   find_value = login.to_s
  equial = hash_value == find_value
  if equial
    puts "Значения совпадают"
  else
    raise "Значния не совпадают"
  end
  if @driver.is_keyboard_shown()
    @driver.hide_keyboard(nil, :tapOutside)
  end
end

When(/^Провряем что в Поле Логин не соответствуют значениям введенным для аккаунта "([^"]*)"$/) do |udid_phone|
  udid = udid_phone
  #udid = ENV["device"]
  puts login = $accounts_hash[udid].split("_")[0]
  puts find_element(accessibility_id: "authorization_login_text-field").value.to_s
  puts  m = find_element(accessibility_id: "authorization_login_text-field").value.to_s.equal?(login)
  if m
    raise "Значения совпадают"
  else
    puts "Значения не совпадают"
  end
  if @driver.is_keyboard_shown()
    @driver.hide_keyboard(nil, :tapOutside)
  end
end

When(/^ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ$/) do
  # РАЗРЕШИТЬ УВЕДОМЛЕНИЯ!!!!!!!!!!!
  spent_time = 0
  until exist_element?(accessibility_id:"SBSwitcherWindow") do
    spent_time +=0.5
    if spent_time > 3
      puts "ALERT  не появился после #{spent_time} секунд ожидания!"
      break
    end
  end
  puts "Элемент появился спустя #{spent_time} секунд."
  if exist_element?(accessibility_id:"SBSwitcherWindow")
    elements = find_elements(class: "XCUIElementTypeButton")
    elements[-1].click
    puts "Нажали элемент"
  else
    puts "Слава богу нет дурацкого алерта об нотификации,ура!"
  end
end


When(/^ПРОВЕРКА НА ПРОПУСТИТЬ$/) do
  #  ОБХОД ДЛЯ ВНОВЬ УСТАНОВЛЕННОГО ПРИЛОЖЕНИЯ!!!!!!!!!!!
  spent_time = 0
  until exist_element?(accessibility_id:"tutorial_skip_button") do
    spent_time +=0.5
    if spent_time > 3
      puts "ALERT  не появился после #{spent_time} секунд ожидания!"
      break
    end
  end
  puts "Элемент появился спустя #{spent_time} секунд."
  if exist_element?(accessibility_id:"tutorial_skip_button")
    elements = find_element(accessibility_id: "tutorial_skip_button")
    elements.click
    puts "Нажали элемент"
  else
    puts "Слава богу нет дурацкого алерта об обновлении,ура!"
  end
end


When(/^Проверяем, что в элементе "([^"]*)" класса "([^"]*)" с индексом "([^"]*)"$/) do |name, my_class,index,|
  element = find_elements(class:my_class)
  if element[index.to_i]
    puts "В элементе есть текст #{element[index.to_i].label}"
  else
    puts "В элементе нет текста"
  end
end


When(/^Проверяем, что у элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложнного в элемент с классом "([^"]*)", есть лейбл$/) do |name, my_class,index, my_class_2|
  element = find_element(class: my_class_2).find_elements(class:my_class)
  if element[index.to_i].label?
    puts "В элементе есть текст #{element[index.to_i].value}"
  else
    raise "В элементе нет текста"
  end
end

When(/^Проверяем наличие элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенного в элемент с классом "([^"]*)"$/) do |name,my_class,index, my_class_2|
  element = find_element(class: my_class_2).find_elements(class:my_class)
  if element[index.to_i].enabled?
    puts ("Есть элемент #{name}.")
  else
    raise "Нет элемента #{name}!"
  end
end


When(/^Проверяем, что в элементе "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенного в элемент с классом "([^"]*)", есть текст$/) do |name, my_class,index, class_2|
  element = find_element(class: class_2).find_elements(class:my_class)
  if element[index.to_i].value?
    puts "В элементе есть текст #{element[index.to_i].value}"
  else
    raise "В элементе нет текста"
  end
end
When(/^Проверяем, что в элементе с id "([^"]*)" у элемента класса "([^"]*)" с индексом "([^"]*)" есть текст$/) do |id, class1, index|
  if exist_element?(accessibility_id: id)
    elements = find_element(accessibility_id: id).find_elements(class: class1)
  else
    puts "Для элемента задан текст #{elements[index.to_i].value}"
    raise "Текста нет"
  end
end
When(/^Проверяем, что у элемента "([^"]*)" с id "([^"]*)" есть лейбл$/) do |name, id|
  element = find_element(id: id)
  if element.label?
    puts "В элементе есть текст #{name}"
  else
    raise "В элементе нет текста"
  end
end

When(/^Проверяем, что дата рождения выставляется по умолчанию правильно$/) do
  field_value = find_element(accessibility_id: "registration-full_date-of-birthday_text-field-ext").value
  reg = /(\d\d\d\d)/
  birth_date = field_value.scan(reg)[0]
  now_date = Time.now.strftime("%Y")
  age = now_date.to_i - birth_date[0].to_i
  if age == 18
    puts "По умолчанию выставляется дата рождения, соответствующая восемнадцатилетнему возрасту"
  else
    fail "По умолчанию пользователю не 18!"
  end
end