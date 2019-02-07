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