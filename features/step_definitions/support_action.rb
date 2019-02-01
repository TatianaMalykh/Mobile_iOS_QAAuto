require 'fileutils'
require 'appium_lib'
require 'cucumber'
require 'chunky_png'


When(/^Ждем "([^"]*)" секунд\(ы\)$/) do |second|
  sleep (second.to_i)
end

When(/^Ждем появления элемента "([^"]*)" с id "([^"]*)", но не более "([^"]*)" секунд$/) do |name, id, second|
  spent_time = 0
  until exist_element?(id: id) do
    sleep(5)
    spent_time+=0.5
    if spent_time > second.to_i
      raise "Элемент #{name} не появился спустя #{second} секунд"
    end
  end
end
