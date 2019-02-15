require 'fileutils'
require 'appium_lib'
require 'cucumber'

When(/^Пользователь вводит в поле "([^"]*)" с ID "([^"]*)" "([^"]*)"$/) do |field, id, value|
  find_element(id: id).clear
  find_element(id: id).send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
end


When(/^Вводим допустимую дату рождения$/) do
  if exist_element?(id: "Toolbar")
    3.times {swipe(start_x: 300, start_y: 500, end_x: 300, end_y: 600)}
    sleep (2)
    find_element(id: "text-field_next_button").click
  end
end

When(/^Пользователь вводит рандомный номер телефона$/) do
  if exist_element?(id: "registration-full_phone_text-field")
    number = Time.now.strftime("%Y%d%H%M%S")
    find_element(id: "registration-full_phone_text-field").send_keys(number)
    puts "Ввели номер #{number}"
  else
    fail "Нет поля для ввода номера"
  end
end

When(/^Пользователь вводит в поле "([^"]*)" класса "([^"]*)" "([^"]*)"$/) do |field, class1, value|
  find_element(class: class1).clear
  find_element(class: class1).send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
end
When(/^Пользователь вводит в поле "([^"]*)" с классом "([^"]*)" и индексом "([^"]*)" значение "([^"]*)"$/) do |field, myclass,index, value|
  find_element(class: myclass).clear
  elements = find_elements(class: myclass)
    elements[index.to_i].send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
  # if @driver.is_keyboard_shown
  #   puts @driver.is_keyboard_shown
  #   @driver.hide_keyboard('Перейти')
  #   @driver.hide_keyboard('Готово')
  #   puts @driver.hide_keyboard('Перейти')
  # end
end
When(/^Пользователь вводит в поле "([^"]*)" с классом "([^"]*)" и индексом "([^"]*)" значение "([^"]*)" без скрытия клавиатуры$/) do |field, myclass,index, value|
  find_element(class: myclass).clear
  elements = find_elements(class: myclass)
  elements[index.to_i].send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
end