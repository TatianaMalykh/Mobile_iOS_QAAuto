When(/^Пользователь вводит в поле "([^"]*)" с ID "([^"]*)" "([^"]*)"$/) do |field, id, value|
  find_element(id: id).clear
  find_element(id: id).send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
  if @driver.is_keyboard_shown
    @driver.hide_keyboard
  end
end

When(/^Пользователь вводит в поле "([^"]*)" с классом "([^"]*)" и индексом "([^"]*)" значение "([^"]*)"$/) do |field, myclass,index, value|
  find_element(class: myclass).clear
  elements = find_elements(class: myclass)
    elements[index.to_i].send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
  if @driver.is_keyboard_shown
    puts @driver.is_keyboard_shown
    @driver.hide_keyboard('Перейти')
    puts @driver.hide_keyboard('Перейти')
  end
end