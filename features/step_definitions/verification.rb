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