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
      if id == "Stream" or id == "Subscriptions" or id == "Results"
        find_element(name: "Events").click
        #swipe(start_x: 20, start_y: 900, end_x: 20, end_y: 200)
        sleep (2)
        find_element(accessibility_id: id).click
      elsif id == "Toto" or id == "Bet Constructor" or id == "Financials" or id == "Betting exchange"
        find_element(name: "Lotteries and financials").click
        swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
        sleep (2)
        find_element(accessibility_id: id).click
      elsif id == "Promo Code Store" or id == "Info"
        swipe(start_x: 20, start_y: 700, end_x: 20, end_y: 200)
        find_element(name: "Other").click
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

