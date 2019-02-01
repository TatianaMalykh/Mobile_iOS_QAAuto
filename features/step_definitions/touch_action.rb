require 'fileutils'
require 'appium_lib'
require 'cucumber'

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)"$/) do |name, id|
  find_element(id: id).click
  puts "Нажали #{name}"
end

When(/^Делаем свайп вправо$/) do
  swipe start_x: 50, start_y: 50, end_x: 100, end_y: 50
end