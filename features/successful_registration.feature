#language: ru
@successful_registration
  Функциональность:

    Сценарий: Проверка наличия полей в быстрой регистрации
#      И Ждем появления элемента "Пропустить" с id "tutorial_skip_button", но не более "10" секунд
#      И Пользователь нажимает элемент "Пропустить" с id "tutorial_skip_button"
      Дано Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
#      проверяем наличие элементов вверху экрана
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Проверяем наличие элемента "Переключатель типов регистраций" с id "registration_segments_segmented-control"
#      И Пользователь нажимает элемент "Рега по мылу" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "registration_segments_segmentControl"
#      проверяем элементы в регистрации по мобильному телефону
      И Проверяем наличие элемента "Поле ввода телефона" с id "registration-mobile_phone_text-field"
      И Проверяем наличие элемента "Выбор валюты" с id "registration-mobile_currency_text-field-ext"
      И Проверяем наличие элемента "Промо-код" с id "registration-mobile_promo-code_text-field"
      И Проверяем наличие элемента "Вход с помощью Touch ID" с id "registration-mobile_touch-id_button"
      И Проверяем наличие элементов "Подтверждение совершеннолетия" с name "registration_info_button" и выводим их количество в лог
      И Проверяем наличие элементов "Правила компании" с name "registration_rules_button" и выводим их количество в лог
      И Проверяем наличие элемента "Зарегистрироваться" с id "registration-mobile_registration_button"
#      проверяем элементы в регистрации в один клик
      И Делаем свайп вниз
      И Проверяем наличие элемента "Страна" с id "registration-oneclick_country_text-field-ext"
      И Проверяем наличие элемента "Выбор валюты" с id "registration-oneclick_currency_text-field-ext"
      И Проверяем наличие элемента "Промо-код" с id "registration-oneclick_promo-code_text-field"
      И Проверяем наличие элемента "Вход с помощью Touch ID" с id "registration-oneclick_touch-id_button"
      И Проверяем наличие элементов "Подтверждение совершеннолетия" с name "registration_info_button" и выводим их количество в лог
      И Проверяем наличие элементов "Правила компании" с name "registration_rules_button" и выводим их количество в лог
      И Проверяем наличие элемента "Зарегистрироваться" с id "registration-oneclick_registration_button"
    @wip
    Сценарий: Проверка регистрации по мобильному телефону
      Дано Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Поле ввода номера" с id "registration-mobile_phone_text-field"
      И Пользователь вводит в поле "Поле ввода номера" с ID "registration-mobile_phone_text-field" "79013687702"
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-mobile_currency_text-field-ext"
      То Ждем появления элемента "Тулбар" с id "Toolbar", но не более "10" секунд
      К тому же Проверяем наличие элемента "Отмена" с id "text-field_cancel_button"
      И Проверяем наличие элемента "Назад" с id "text-field_previos_button"
      И Проверяем наличие элемента "Далее" с id "text-field_next_button"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext" не соответствует ранее записанному
      И Проверяем, что в элементе "Промокод" с id "registration-oneclick_promo-code_text-field" есть текст
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      тап по правилам компании ведет на сайт, который не отвечает - баг или фича?
      И Ждем "2" секунд(ы)
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
#      Так как не можем проверять каждый раз новый номер телефона, то ждем алерт о том, что телефон уже активирован
#      Попытку восстановить пароль проверим в негативном сценарии
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе с id "alert-controller_alert_view" у элемента класса "XCUIElementTypeStaticText" с индексом "1" есть текст






