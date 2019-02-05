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
  if find_element(id: id).value.empty?
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

When(/^Проверяем, что в элементе с id "([^"]*)" у элемента класса "([^"]*)" с индексом "([^"]*)" есть текст$/) do |id, class1, index|
  if exist_element?(accessibility_id: id)
    elements = find_element(accessibility_id: id).find_elements(class: class1)
    puts "Для элемента задан текст #{elements[index.to_i].value}"
  else
    raise "Текста нет"
  end
end