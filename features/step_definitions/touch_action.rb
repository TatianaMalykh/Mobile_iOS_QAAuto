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
      if id == "menu_menuStream_cell" or id == "menu_menuGameNotification_cell" or id == "menu_menuResults_cell"
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
  swipe(start_x: 20, start_y: 600, end_x: 20, end_y: 200)
  sleep (2)
end

When(/^Пользователь нажимает элемент "([^"]*)" с id "([^"]*)" с индексом "([^"]*)"$/) do |name, id, index|
  elements = find_elements(id: id)
  elements[index.to_i].click
  puts "Нажали элемент #{name}"
end