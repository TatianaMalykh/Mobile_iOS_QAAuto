#language: ru
@successful_registration
  Функциональность:
    @wip
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
      





