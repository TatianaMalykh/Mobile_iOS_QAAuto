require 'fileutils'
require 'appium_lib'
require 'cucumber'

When(/^Пользователь вводит в поле "([^"]*)" с ID "([^"]*)" "([^"]*)"$/) do |field, id, value|
  find_element(id: id).clear
  find_element(id: id).send_keys(value)
  puts ("Вводим в поле #{field} #{value}")
end

