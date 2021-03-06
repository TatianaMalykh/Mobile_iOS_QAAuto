#language: ru
@unsuccessful_registration
  Функциональность:

    Сценарий: Проверка регистрации по мобильному телефону
      Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
      И ПРОВЕРКА НА ОБНОВЛНИЕ
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
#      Проверка попытки зарегистрироваться с пустыми полями
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверка зарегистрироваться только с подтверждением совершеннолетия
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверка попытки зарегистрироваться с выбранной валютой, но без введенного телефона
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-mobile_currency_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext" не соответствует ранее записанному
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться без выбранной валюты, но с введенным телефоном
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      И Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      То Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Поле ввода номера" с id "registration-mobile_phone_text-field"
      И Пользователь вводит в поле "Поле ввода номера" с ID "registration-mobile_phone_text-field" "79013687702"
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться с неправильным номером
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      И Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      То Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Поле ввода номера" с id "registration-mobile_phone_text-field"
      И Пользователь вводит в поле "Поле ввода номера" с ID "registration-mobile_phone_text-field" "00000"
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-mobile_currency_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext" не соответствует ранее записанному
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться без подтверждения совершеннолетия
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      И Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      То Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Поле ввода номера" с id "registration-mobile_phone_text-field"
      И Пользователь вводит в поле "Поле ввода номера" с ID "registration-mobile_phone_text-field" "00000"
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-mobile_currency_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-mobile_currency_text-field-ext" не соответствует ранее записанному
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-mobile_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"

    Сценарий: Проверка быстрой регистрации
      Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
      И ПРОВЕРКА НА ОБНОВЛНИЕ
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Делаем свайп вниз
#      Проверка регистрации в один клик без заполнения полей
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться только с подтверждением совершеннолетия
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button" с индексом "1"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться с выбранной страной, но без выбранной валюты
      К тому же Записываем в файл всё значение текста элемента "Страна" с id "registration-oneclick_country_text-field-ext"
      Когда Пользователь нажимает элемент "Страна" с id "registration-oneclick_country_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Страна" с id "registration-oneclick_country_text-field-ext" не соответствует ранее записанному
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться с выбранной валютой, но без выбранной страны
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Делаем свайп вниз
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-oneclick_currency_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext" не соответствует ранее записанному
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      Подтверждаем, что совершеннолетние, со всем согласны и жмем на регистрацию
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button" с индексом "1"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Попытка зарегистрироваться без подтверждения совершеннолетия
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Делаем свайп вниз
      К тому же Записываем в файл всё значение текста элемента "Страна" с id "registration-oneclick_country_text-field-ext"
      Когда Пользователь нажимает элемент "Страна" с id "registration-oneclick_country_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Страна" с id "registration-oneclick_country_text-field-ext" не соответствует ранее записанному
      К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext"
      Когда Пользователь нажимает элемент "Валюта" с id "registration-oneclick_currency_text-field-ext"
      Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext" не соответствует ранее записанному
#      скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"

    Сценарий: Проверка полной регистрации (имейл)
      Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
      И ПРОВЕРКА НА ОБНОВЛНИЕ
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Рега по мылу" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "registration_segments_segmented-control"
      И Делаем свайп вниз
#      Проверка попытки зарегистрироваться с пустыми полями
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Заполняем поля данными за исключением полей: страна, регион, город, дата рождения, валюта
      И Пользователь вводит в поле "Фамилия" с ID "registration-full_surname_text-field" "Кришна"
      И Пользователь вводит в поле "Имя" с ID "registration-full_name_text-field" "Егор"
      И Пользователь вводит рандомный номер телефона
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь вводит в поле "Имейл" с ID "registration-full_mail_text-field" "egorkrisna@mail.ru"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь вводит в поле "Пароль" с ID "registration-full_password_text-field" "qwe890qwe"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь вводит в поле "Повторите пароль" с ID "registration-full_password-сonfirm_text-field" "qwe890qwe"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      Проверяем чекбоксы, по дефолту сняты
      К тому же Делаем скриншот элемента "Получать_новости_событий" с id "registration-full_event-news_button"
      И Пользователь нажимает элемент "Получать_новости_событий" с id "registration-full_event-news_button"
      И Проверяем, что скриншот "Получать_новости_событий" не совпадает с новым скриншотом "Получать_новости_событий_ОК" элемента с id "registration-full_event-news_button"
      К тому же Делаем скриншот элемента "Получать_результаты_ставок" с id "registration-full_result-news_button"
      И Пользователь нажимает элемент "Получать_результаты_ставок" с id "registration-full_result-news_button"
      И Проверяем, что скриншот "Получать_результаты_ставок" не совпадает с новым скриншотом "Получать_результаты_ставок_ОК" элемента с id "registration-full_result-news_button"
      К тому же Пользователь нажимает элемент "Вход с ТАЧ АЙДИ" с id "registration-full_touch-id_button"
      И Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Пользователь нажимает элемент "Отмена" с id "Отмена"
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
#      Пытаемся зарегистрироваться без указанных страны, даты рождения и валюты
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверим, что нельзя выбрать регион и город без указанной страны
      И Делаем свайп вверх
      И Записываем в файл всё значение текста элемента "Регион" с id "registration-full_region_text-field-ext"
      И Пользователь нажимает элемент "Регион" с id "registration-full_region_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Регион" с id "registration-full_region_text-field-ext" соответствует ранее записанному
      И Записываем в файл всё значение текста элемента "Город" с id "registration-full_city_text-field-ext"
      И Пользователь нажимает элемент "Город" с id "registration-full_city_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Город" с id "registration-full_city_text-field-ext" соответствует ранее записанному
#      Пытаемся зарегистрироваться без указанных даты рождения и валюты
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вверх
      И Записываем в файл всё значение текста элемента "Страна" с id "registration-full_country_text-field-ext"
      И Пользователь нажимает элемент "Страна" с id "registration-full_country_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Страна" с id "registration-full_country_text-field-ext" не соответствует ранее записанному
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Пытаемся зарегистрироваться без указанной даты рождения
      И Записываем в файл всё значение текста элемента "Валюта" с id "registration-full_currency_text-field-ext"
      И Пользователь нажимает элемент "Валюта" с id "registration-full_currency_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-full_currency_text-field-ext" не соответствует ранее записанному
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверим, что по умолчанию выставляется дата рождения, при которой юзеру не менее 18 лет
      И Делаем свайп вверх
      И Записываем в файл всё значение текста элемента "Дата рождения" с id "registration-full_date-of-birthday_text-field-ext"
      И Пользователь нажимает элемент "Дата рождения" с id "registration-full_date-of-birthday_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Дата рождения" с id "registration-full_date-of-birthday_text-field-ext" не соответствует ранее записанному
      И Проверяем, что дата рождения выставляется по умолчанию правильно
#      Проверим, что нельзя зарегистрироваться с подходящей датой, но без фамилии
      И Очищаем поле с id "registration-full_surname_text-field"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверим, что нельзя зарегистрироваться без введенного имени
      И Делаем свайп вверх
      И Пользователь вводит в поле "Фамилия" с ID "registration-full_surname_text-field" "Кришна"
      И Очищаем поле с id "registration-full_name_text-field"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Пытаемся зарегистрироваться без номера телефона/с некорректным номером телефона(коротким)
#      НА ПРЕДОСТАВЛЕННОЙ СБОРКЕ НЕ РАБОТАЕТ
      И Делаем свайп вверх
      И Пользователь вводит в поле "Имя" с ID "registration-full_name_text-field" "Ягер"
      И Очищаем поле с id "registration-full_phone_text-field"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Делаем свайп вверх
      И Пользователь вводит в поле "Телефон" с ID "registration-full_phone_text-field" "1234567"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Делаем свайп вверх
      И Пользователь вводит рандомный номер телефона
#      Пытаемся зарегистрироваться без электронной почты/с некорректной почтой(не соответствует маске, занята)
#      Возможно, что на этом этапе поле почты не валидируется по базе, удалить соотв проверку, если так
      И Очищаем поле с id "registration-full_mail_text-field"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Делаем свайп вверх
      И Пользователь вводит в поле "Имейл" с ID "registration-full_mail_text-field" "egorkrisna"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Делаем свайп вверх
      И Пользователь вводит в поле "Имейл" с ID "registration-full_mail_text-field" "greygreysashu@gmail.com"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Делаем свайп вниз
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Пользователь вводит в поле "Имейл" с ID "registration-full_mail_text-field" "egorkrishna@mail.ru"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      Пытаемся зарегистрироваться без пароля/подтверждения, только без пароля, только без подтверждения, с паролем, отличающимся от подтверждения
      И Очищаем поле с id "registration-full_password_text-field"
      И Очищаем поле с id "registration-full_password-сonfirm_text-field"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Пользователь вводит в поле "Пароль" с ID "registration-full_password_text-field" "qwe"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Очищаем поле с id "registration-full_password_text-field"
      И Пользователь вводит в поле "Подтверждение пароля" с ID "registration-full_password-сonfirm_text-field" "qwe"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
      И Пользователь вводит в поле "Пароль" с ID "registration-full_password_text-field" "qwe"
      И Пользователь вводит в поле "Подтверждение пароля" с ID "registration-full_password-сonfirm_text-field" "ewq"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-full_registration_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      К тому же Пользователь нажимает элемент "ОК" с id "OK"

    Сценарий: Проверка регистрации через соцсеть
      Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
      И ПРОВЕРКА НА ОБНОВЛНИЕ
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
      И Ждем "2" секунд(ы)
      И ПРОВЕРКА НА ПРОПУСТИТЬ
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Регистрация через соцсетки" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "registration_segments_segmented-control"
#       Проверка попытки зарегистрироваться с пустыми полями и безо всяких подтверждений
      И Пользователь нажимает элемент "ВК" с id "registration-social_vk_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      И Записываем в файл значение текста элемента "Текст_алерта" класса "XCUIElementTypeStaticText" с индексом "1", находящегося в элементе с id "alert-controller_alert_view"
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверка попытки зарегистрироваться только с подтверждением возраста
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Пользователь нажимает элемент "ВК" с id "registration-social_vk_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      И Проверяем, что значение текста элемента "Текст_нового_алерта" класса "XCUIElementTypeStaticText" с индексом "1", вложенного в элемент с id "alert-controller_alert_view", не совпадает с ранее записанным
      И Записываем в файл значение текста элемента "Текст_алерта" класса "XCUIElementTypeStaticText" с индексом "1", находящегося в элементе с id "alert-controller_alert_view"
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверка попытки зарегистрироваться только с указанной страной
      И Записываем в файл всё значение текста элемента "Страна" с id "registration-social_country_text-field-ext"
      И Пользователь нажимает элемент "Страна" с id "registration-social_country_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Страна" с id "registration-social_country_text-field-ext" не соответствует ранее записанному
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "ВК" с id "registration-social_vk_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      И Проверяем, что значение текста элемента "Текст_нового_алерта" класса "XCUIElementTypeStaticText" с индексом "1", вложенного в элемент с id "alert-controller_alert_view", не совпадает с ранее записанным
      И Записываем в файл значение текста элемента "Текст_алерта" класса "XCUIElementTypeStaticText" с индексом "1", находящегося в элементе с id "alert-controller_alert_view"
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#       Проверка попытки зарегистрироваться только с указанной валютой
      И Пользователь нажимает элемент "Назад" с id "buttonLeft"
      И Делаем свайп вправо
      То Ждем появления элемента "Аватара пользователя" с id "menuUser", но не более "10" секунд
      Когда Выбираем в меню элемент "menu_menuRegistration_cell"
      Тогда Ждем появления элемента "Назад" с id "buttonLeft", но не более "10" секунд
      И Пользователь нажимает элемент "Регистрация через соцсетки" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "registration_segments_segmented-control"
      И Записываем в файл всё значение текста элемента "Валюта" с id "registration-social_currency_text-field-ext"
      И Пользователь нажимает элемент "Валюта" с id "registration-social_currency_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Валюта" с id "registration-social_country_text-field-ext" не соответствует ранее записанному
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Пользователь нажимает элемент "ВК" с id "registration-social_vk_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      И Проверяем, что значение текста элемента "Текст_нового_алерта" класса "XCUIElementTypeStaticText" с индексом "1", вложенного в элемент с id "alert-controller_alert_view", не совпадает с ранее записанным
      И Записываем в файл значение текста элемента "Текст_алерта" класса "XCUIElementTypeStaticText" с индексом "1", находящегося в элементе с id "alert-controller_alert_view"
      К тому же Пользователь нажимает элемент "ОК" с id "OK"
#      Проверка попытки зарегистрироваться без подтверждения возраста
      Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button"
      И Записываем в файл всё значение текста элемента "Страна" с id "registration-social_country_text-field-ext"
      И Пользователь нажимает элемент "Страна" с id "registration-social_country_text-field-ext"
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
      И Проверяем, что значение всего текста элемента "Страна" с id "registration-social_country_text-field-ext" не соответствует ранее записанному
      И Пользователь нажимает элемент "Далее" с id "text-field_next_button"
#       скрываем клавиатуру кнопкой Отмена
      И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
      И Пользователь нажимает элемент "ВК" с id "registration-social_vk_button"
      Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
      И Проверяем, что в элементе "Предупреждение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
      И Проверяем, что значение текста элемента "Текст_нового_алерта" класса "XCUIElementTypeStaticText" с индексом "1", вложенного в элемент с id "alert-controller_alert_view", не совпадает с ранее записанным











