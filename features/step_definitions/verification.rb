
When(/^Проверяем наличие элемента "([^"]*)" с id "([^"]*)"$/) do |name, id_name|
  if exist_element?(accessibility_id: id_name)
    puts ("Есть элемент #{name}.")
  else
    raise "Нет элемента #{name}!"
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
    memory_file = File.new("#{$project_path}/reports/state.txt")
    val_memory = memory_file.read.chomp!
    if val_memory == val_element
      puts ("Значение #{val_memory} равно значению #{val_element}.")
    else
      raise ("Значение #{val_memory} НЕ равно значению #{val_element}!")
    end
  end
end


When(/^Проверяем наличие элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенного в элемент id "([^"]*)"$/) do |name,my_class,index, id|
  element = find_element(id: id).find_elements(class:my_class)
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
    memory_file = File.new("#{$project_path}/reports/state.txt")
    val_memory = memory_file.read.chomp!
    if val_memory != val_element
      puts ("Значение #{val_memory} НЕ равно значению #{val_element}.")
    else
      raise ("Значение #{val_memory}  равно значению #{val_element}!")
    end
  end
end


When(/^Проверяем, что скриншот "([^"]*)" не совпадает с новым скриншотом "([^"]*)" элемента с id "([^"]*)"$/) do |standard_element, actual_element, id|
  element = find_element(id: id)
  if element_same?(actual_element, standard_element, element)
    raise "Скриншоты совпали!"
  else
    puts "Скриншоты не совпали."
  end
end

When(/^Проверяем, что в элементе "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложнного в элемент с id "([^"]*)", есть текст$/) do |name, my_class,index, id|
  element = find_element(id: id).find_elements(class:my_class)
  if element[index.to_i].value?
    puts "В элементе есть текст #{name}"
  else
    raise "В элементе нет текста"
  end
end


When(/^Проверяем, что у элемента "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложнного в элемент с id "([^"]*)", есть лейбл$/) do |name, my_class,index, id|
  element = find_element(id: id).find_elements(class:my_class)
  if element[index.to_i].label?
    puts "В элементе есть текст #{name}"
  else
    raise "В элементе нет текста"
  end
end