require 'fileutils'
require 'appium_lib'
require 'cucumber'

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)"$/) do |name, id|
  find_element(accessibility_id: id).click
  puts("Нажали #{name}")
end

When(/^Пользователь нажимает элемент "([^"]*)" с name "([^"]*)"$/) do |name_el, id|
  find_element(name: id).click
  puts("Нажали #{name_el}")
end

When(/^Пользователь выбирает в списке "([^"]*)" "([^"]*)" "([^"]*)" с id "([^"]*)"$/) do |list, index, name, id|
  elements = find_elements(accessibility_id: id)
  elements[index.to_i].click
  puts ("Пользователь выбрал в #{list} элемент #{name}")
end

When(/^Выбираем в меню элемент "([^"]*)"$/) do |id|
  #ПЕРЕДЕЛАТЬ КАТЕГОРИИ когда будут айдишники
  $driver.set_implicit_wait(1)
  swipe(start_x: 50, start_y: 200, end_x: 50, end_y: 700)
  sleep (2)
  if exist_element?(accessibility_id: id)
    find_element(accessibility_id: id).click
  else
    swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
    sleep (2)
    if exist_element?(accessibility_id: id)
      find_element(accessibility_id: id).click
    else
      if id == "menu_menuBetYours_cell" or id == "menu_menuStream_cell" or id == "menu_menuGameNotification_cell" or id == "menu_menuResults_cell"
        find_element(id: "menu_menuGroupEvents_button").click
        #swipe(start_x: 20, start_y: 900, end_x: 20, end_y: 200)
        sleep (2)
        find_element(accessibility_id: id).click
      elsif id == "menu_menuToto_cell" or id == "menu_menuBetContructor_cell" or id == "menu_menuFinanceBets_cell" or id == "menu_menuBettingExchange_cell"
        find_element(id: "menu_menuGroupTotoAndFinBets_button").click
        swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
        sleep (2)
        find_element(accessibility_id: id).click
      elsif id == "menu_menuPromoMarket_cell" or id == "menu_menuInfo_cell"
        swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
        find_element(id: "menu_menuGroupOther_button").click
        swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
        sleep (2)
        find_element(accessibility_id: id).click
      else
        raise("Нет такого элемента")
      end
    end
  end
end

When(/^Пользователь делает свайп вправо$/) do
  # работает только если в капсах прописать XCUIEST = true
  swipe direction: "right"
  puts ("Пользователь выбрал в  элемент ")
end

When(/^Делаем свайп вправо$/) do
  #работает только если выключить XCUIEST
  swipe(start_x: 5, start_y: 50, end_x: 500, end_y: 50)
  puts ("Пользователь выбрал в  элемент ")
end

When(/^Пользователь нажимает элемент "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенный в элемент с id "([^"]*)"$/) do |name, class1, index, id|
  elements = find_element(accessibility_id: id).find_elements(class: class1)
  elements[index.to_i].click
  puts "Press to #{name}"
end

When(/^Делаем свайп вниз$/) do
  swipe(start_x: 20, start_y: 500, end_x: 20, end_y: 200)
  sleep (2)
end

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)" с индексом "([^"]*)"$/) do |name, id, index|
  elements = find_elements(id: id)
  elements[index.to_i].click
  puts "Нажали элемент #{name}"
end

When(/^Пользователь нажимает элемент "([^"]*)" класса "([^"]*)" с индексом "([^"]*)"$/) do |name, class1, index|
  elements = find_elements(class: class1)
  elements[index.to_i].click
  puts "Нажали элемент #{name}"
end

When(/^Делаем свайп по параметрам x: "([^"]*)" y: "([^"]*)" x_end: "([^"]*)" y_end: "([^"]*)"$/) do |x, y, x_end,y_end|
  #работает только если выключить XCUIEST
  swipe(start_x: x.to_i, start_y: y.to_i, end_x: x_end.to_i, end_y: y_end.to_i)
  puts ("Пользователь выбрал в  элемент ")
end

When(/^Пользователь нажимает элемент "([^"]*)" класса "([^"]*)" с индексом "([^"]*)", вложенный в элемент с классом "([^"]*)"$/) do |name, class1, index, class2|
  elements = find_element(class: class2).find_elements(class: class1)
  elements[index.to_i].click
  puts "Нажали элемент"
end

When(/^Делаем свайп вверх$/) do
  swipe(start_x: 20, start_y: 200, end_x: 20, end_y: 600)
  sleep (2)
end

When(/^Пользователь нажимает элемент на экране с координатами x "([^"]*)" и y "([^"]*)"$/) do |point_x, point_y|
  Appium::TouchAction.new.press(x: point_x, y: point_y).release.perform
  puts "Нажали на элемент с координатами #{point_x}, #{point_y}"
end

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)" с индексом "([^"]*)", вложенный в элемент с id "([^"]*)"$/) do |name, id2, index, id|
  elements = find_element(id: id).find_elements(id: id2)
  elements[index.to_i].click
  puts "Нажали элемент #{name}"
end

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)" по координатам этого элемента$/) do |name, id|
  element = find_element(accessibility_id: id)
  x = element.rect.x
  y  = element.rect.y
  puts x,y
  Appium::TouchAction.new.press(x: x, y: y).release.perform
  puts("Нажали #{name}")
end

When(/^Пользователь выбирает в списке "([^"]*)" "([^"]*)" "([^"]*)" с id "([^"]*)" и нажимает на него по координатам$/) do |list, index, name, id|
  elements = find_elements(accessibility_id: id)
  elem = elements[index.to_i]
  x = elem.rect.x
  y = elem.rect.y
  puts x,y
  Appium::TouchAction.new.press(x: x, y: y).release.perform
  puts ("Пользователь выбрал в #{list} элемент #{name}")
end

When(/^Пользователь делает свайп элемента "([^"]*)" с id "([^"]*)" по оси "([^"]*)" на расстояние "([^"]*)"$/) do  |name, id,axis,dist|
  # работает только если в капсах прописать XCUIEST = true
  # Принимает параметр axis только значения х у
  elements = find_element(accessibility_id: id)
  x_start = elements.rect.x
  y_start = elements.rect.y
  puts x_start,y_start
  if axis == "x"
    puts "Двигаемся по оси X на #{dist}"
      swipe(start_x: x_start, start_y: y_start, end_x: x_start+dist.to_f, end_y: y_start)
  elsif axis == "y"
    puts "Двигаемся по оси y на #{dist}"
    swipe(start_x: x_start, start_y: y_start, end_x: x_start, end_y: y_start+dist.to_f)
  else
    raise "Неизвестный параметр"
  end
  puts ("Передвинули элемент #{name} на #{dist} по оси #{axis}")
end

When(/^Двигаемся по направлению "([^"]*)" "([^"]*)" раз в списке с классом "([^"]*)" и индексом "([^"]*)" который находится в элементе с классом "([^"]*)" и индексом "([^"]*)"$/) do |direction,numbers, class1, index1, class2, index2|
  # direction принимает  ВВЕРХ ВНИЗ UP DOWN
  element_sour = find_elements(class: class2)[index2.to_i]
  elements = element_sour.find_elements(class:class1)[index1.to_i]
  x = elements.rect.x
  y = elements.rect.y
  # находим  высоту элемента и делим ее на 2
  height_elem  = elements.size.height
   i = 0
  while i < numbers.to_i
  case direction
  when "UP", "Вверх", "ВВЕРХ", "up", "вверх"
    Appium::TouchAction.new.press(x: x+5, y: y+(height_elem/2)+(height_elem/4)).release.perform
  when "DOWN", "Вниз", "ВНИЗ", "down", "вверх"
    Appium::TouchAction.new.press(x: x+5, y: y+(height_elem/2)-5).release.perform
  else
    raise("Указано неверное направление")
  end
    i+=1
 end
end

When(/^Двигаем год по направлению "([^"]*)" "([^"]*)" раз в списке с классом "([^"]*)" и индексом "([^"]*)" который находится в элементе с классом "([^"]*)" и индексом "([^"]*)"$/) do |direction,numbers, class1, index1, class2, index2|
  # direction принимает  ВВЕРХ ВНИЗ UP DOWN
  element_sour = find_elements(class: class2)[index2.to_i]
  elements = element_sour.find_elements(class:class1)[index1.to_i]
  x = elements.rect.x
  y = elements.rect.y
  width_elem = elements.size.width
  height_elem  = elements.size.height
  i = 0
  while i < numbers.to_i
    case direction
    when "UP", "Вверх", "ВВЕРХ", "up", "вверх"
      Appium::TouchAction.new.press(x: x+width_elem-5, y: y+(height_elem/2)+(height_elem/4)).release.perform
    when "DOWN", "Вниз", "ВНИЗ", "down", "вверх"
      Appium::TouchAction.new.press(x: x+width_elem-5, y: y+(height_elem/2)-5).release.perform
    else
      raise("Указано неверное направление")
    end
    i+=1
  end
end

When(/^Пользователь делает свайп вниз до элемента с id "([^"]*)"$/) do |id|
  count = 0
    puts (find_element(id:id).attribute("visible"))
      until find_element(id:id).attribute("visible") == "true"  do
        puts "Ким точно клецка!"
        puts ("сделали свайп")
        swipe(start_x: 10, start_y: 250, end_x: 10, end_y: 200)
        count +=1
        break if count > 30
      end
end

When(/^Симулируем положительное нажатие Touchid$/) do
  @driver.touch_id(true)
  puts("Проверка Touchid прошла")
end

When(/^Симулируем отрицательное нажатие Touchid$/) do
  @driver.touch_id(false)
  puts("Проверка Touchid не прошла")
end