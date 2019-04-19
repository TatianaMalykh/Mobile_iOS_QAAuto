#language: ru

Функциональность: profile

  Сценарий: Регистрация в один клик
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
    И Делаем свайп по параметрам x: "50" y: "500" x_end: "50" y_end: "200"
#      Выбираем страну Абхазия
    К тому же Записываем в файл всё значение текста элемента "Страна" с id "registration-oneclick_country_text-field-ext"
    Когда Пользователь нажимает элемент "Страна" с id "registration-oneclick_country_text-field-ext"
    То Ждем появления элемента "Тулбар" с id "Toolbar", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
    И Проверяем, что значение всего текста элемента "Страна" с id "registration-oneclick_country_text-field-ext" не соответствует ранее записанному
#      Выбираем валюту Российский рубль
    К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext"
    Когда Пользователь нажимает элемент "Валюта" с id "registration-oneclick_currency_text-field-ext"
    То Ждем появления элемента "Тулбар" с id "Toolbar", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
    И Проверяем, что значение всего текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext" не соответствует ранее записанному
#      скрываем клавиатуру кнопкой Отмена
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      Подтверждаем, что совершеннолетние, со всем согласны и жмем на регистрацию
    Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button" с индексом "1"
    И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
    И Ждем "2" секунд(ы)
    Тогда Пользователь видит окно об успешности регистрации с логином и паролем
    И Проверяем соответствие выданного логина автоподставленномму
    И Пользователь нажимает элемент "Войти" с id "authorization_auth_button"

  Сценарий: Проверяем редактирование профиля на свежесозданном аккаунте
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
#    И ПРОВЕРКА НА ОБНОВЛНИЕ
#    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    Когда Пользователь нажимает элемент "Клавиша редактировать" с id "editButton"
    # выбираем редактировать
    Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Редактирование профиля" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "alert-controller_alert_view"
    Также Ждем появления элемента "Фамилия" с id "user-edit-profile_surname_text-field", но не более "10" секунд
    И Проверяем, что в элементе "Фамилия" с id "user-edit-profile_surname_text-field" есть текст
    И Проверяем, что в элементе "Имя" с id "user-edit-profile_name_text-field" есть текст
    И Проверяем, что в элементе "Отчество" с id "user-edit-profile_patronymic_text-field" есть текст
    И Проверяем, что в элементе "Email" с id "user-edit-profile_email_text-field" есть текст
    И Проверяем, что в элементе "Тип документа" с id "user-edit-profile_document-type_text-field" есть текст
    И Проверяем, что в элементе "Серия документа" с id "user-edit-profile_document-seria_text-field" есть текст
    И Проверяем, что в элементе "Номер документа" с id "user-edit-profile_document-number_text-field" есть текст
    И Проверяем, что в элементе "Дата выдачи документа" с id "user-edit-profile_document-date_text-field" есть текст
    И Проверяем, что в элементе "Кем выдан документ" с id "user-edit-profile_document-creator_text-field" есть текст
    И Проверяем, что в элементе "Дата рождения" с id "user-edit-profile_date-of-birthday_text-field" есть текст
    И Проверяем, что в элементе "Место рождения" с id "user-edit-profile_place-of-birthday_text-field" есть текст
    И Делаем свайп по параметрам x: "50" y: "500" x_end: "50" y_end: "200"
    И Проверяем, что в элементе "Регион" с id "user-edit-profile_region_text-field" есть текст
    И Проверяем, что в элементе "Город" с id "user-edit-profile_city_text-field" есть текст
    И Проверяем, что в элементе "Адрес регистрации" с id "user-edit-profile_place-of-registration_text-field" есть текст
    И Проверяем, что в элементе "ИНН" с id "user-edit-profile_individual-tax-number_text-field" есть текст
    И Проверяем, что в элементе "Кнопка сохранить" с id "user-edit-profile_save_button" есть текст
    И Делаем скриншот экрана "СКРИН_1" и обрезаем его начиная с x "0.1" y "0.1" на расстояние x "0.9" и y "0.9"
    # Проверка ввода в каждое поле
    Тогда Пользователь нажимает элемент "Кнопка сохранить" с id "user-edit-profile_save_button"
    # Проверяем Алерт
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что у элемента "ОК" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # закрываем алерт
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    Когда Пользователь нажимает элемент "Клавиша редактировать" с id "editButton"
    Тогда Пользователь нажимает элемент "Редактирование профиля" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "alert-controller_alert_view"
    Также Ждем появления элемента "Фамилия" с id "user-edit-profile_surname_text-field", но не более "10" секунд
    # Проверка что не изменились значения полей
    И Проверяем, что скриншот "СКРИН_1" совпадает с новым "СКРИН_2" с расположением по x "0.1" y "0.1" обрезанным на x "0.9" и y "0.9"
    # Проверки каждого из полей
    # Фамилия
    И Записываем в файл с названием "ФАМИЛИЯ" всё значение текста элемента "ФАМИЛИЯ" с id "user-edit-profile_surname_text-field"
    Тогда Пользователь вводит в поле "Фамилия" с ID "user-edit-profile_surname_text-field" "Weider"
    И Проверяем, что значение текста элемента "Фамилия" с id "user-edit-profile_surname_text-field", не совпадает с записанным в файле "ФАМИЛИЯ"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # ИМЯ
    И Записываем в файл с названием "ИМЯ" всё значение текста элемента "Имя" с id "user-edit-profile_name_text-field"
    Тогда Пользователь вводит в поле "Имя" с ID "user-edit-profile_name_text-field" "Dart"
    И Проверяем, что значение текста элемента "ИМЯ" с id "user-edit-profile_name_text-field", не совпадает с записанным в файле "Имя"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # Отчество
    И Записываем в файл с названием "ОТЧЕСТВО" всё значение текста элемента "Отчество" с id "user-edit-profile_patronymic_text-field"
    Тогда Пользователь вводит в поле "Отчество" с ID "user-edit-profile_patronymic_text-field" "Midichlarianovich"
    И Проверяем, что значение текста элемента "Отчество" с id "user-edit-profile_patronymic_text-field", не совпадает с записанным в файле "ОТЧЕСТВО"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    #Email проверки валидации
    И Записываем в файл с названием "EMAIL" всё значение текста элемента "Email" с id "user-edit-profile_email_text-field"
    Тогда Пользователь вводит в поле "Email" с ID "user-edit-profile_email_text-field" "dart"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    Тогда Пользователь нажимает элемент "Кнопка сохранить" с id "user-edit-profile_save_button"
     # Проверяем Алерт
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что у элемента "ОК" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # закрываем алерт
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    # вводим с собакой без домена
    Тогда Пользователь вводит в поле "Email" с ID "user-edit-profile_email_text-field" "dart@weider"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    Тогда Пользователь нажимает элемент "Кнопка сохранить" с id "user-edit-profile_save_button"
    # Проверяем Алерт
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что у элемента "ОК" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # закрываем алерт
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    # вводим корректный Email
    Тогда Пользователь вводит в поле "Email" с ID "user-edit-profile_email_text-field" "dart@weider.rep"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    И Проверяем, что значение текста элемента "Email" с id "user-edit-profile_email_text-field", не совпадает с записанным в файле "EMAIL"
     #Документ гражданина или гражданки
    Тогда Пользователь нажимает элемент "Тип документа" с id "user-edit-profile_document-type_text-field"
    И Двигаемся по направлению "Вверх" "14" раз в списке с классом "XCUIElementTypeOther" и индексом "1" который находится в элементе с классом "XCUIElementTypeWindow" и индексом "1"
    И Ждем "4" секунд(ы)
    И Пользователь нажимает элемент "Клавиша ОК" с id "text-field_ok_button"
    # вводим серию
    И Записываем в файл с названием "СЕРИЯ" всё значение текста элемента "Серия паспорта" с id "user-edit-profile_document-seria_text-field"
    Тогда Пользователь вводит в поле "Серия" с ID "user-edit-profile_document-seria_text-field" "1508"
    И Проверяем, что значение текста элемента "Серия" с id "user-edit-profile_document-seria_text-field", не совпадает с записанным в файле "СЕРИЯ"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # номер
    И Записываем в файл с названием "НОМЕР" всё значение текста элемента "Номер" с id "user-edit-profile_document-number_text-field"
    Тогда Пользователь вводит в поле "Номер" с ID "user-edit-profile_document-number_text-field" "150808"
    И Проверяем, что значение текста элемента "Номер" с id "user-edit-profile_document-number_text-field", не совпадает с записанным в файле "НОМЕР"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # Дата выдачи документа
    Когда Пользователь нажимает элемент "Дата выдачи документа" с id "user-edit-profile_document-date_text-field"
    И Двигаем год по направлению "Вниз" "5" раз в списке с классом "XCUIElementTypeOther" и индексом "1" который находится в элементе с классом "XCUIElementTypeWindow" и индексом "1"
    И Пользователь нажимает элемент "Клавиша ОК" с id "text-field_ok_button"
    # Кем выдан документ
    И Записываем в файл с названием "КЕМВЫДАН" всё значение текста элемента "" с id "user-edit-profile_document-creator_text-field"
    Тогда Пользователь вводит в поле "Кем выдан" с ID "user-edit-profile_document-creator_text-field" "ОВД ГУ Татуина Торговой федерации"
    И Проверяем, что значение текста элемента "Кем выдан" с id "user-edit-profile_document-creator_text-field", не совпадает с записанным в файле "КЕМВЫДАН"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # Дата рождения
    Тогда Пользователь нажимает элемент "Дата рождения пациента" с id "user-edit-profile_date-of-birthday_text-field"
    И Двигаем год по направлению "Вниз" "19" раз в списке с классом "XCUIElementTypeOther" и индексом "1" который находится в элементе с классом "XCUIElementTypeWindow" и индексом "1"
    И Пользователь нажимает элемент "Клавиша ОК" с id "text-field_ok_button"
    И Делаем свайп по параметрам x: "50" y: "500" x_end: "50" y_end: "200"
    # Место рождения
    И Записываем в файл с названием "МЕСТО" всё значение текста элемента "Место рождения" с id "user-edit-profile_place-of-birthday_text-field"
    Тогда Пользователь вводит в поле "Место рождения" с ID "user-edit-profile_place-of-birthday_text-field" "село Отрадное Татуинского уезда Торговой федерации"
    И Проверяем, что значение текста элемента "Место рождения" с id "user-edit-profile_place-of-birthday_text-field", не совпадает с записанным в файле "МЕСТО"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # регион
    Тогда Пользователь нажимает элемент "Регион" с id "user-edit-profile_region_text-field"
    И Двигаемся по направлению "Вверх" "7" раз в списке с классом "XCUIElementTypeOther" и индексом "1" который находится в элементе с классом "XCUIElementTypeWindow" и индексом "1"
    И Ждем "4" секунд(ы)
    И Пользователь нажимает элемент "Клавиша ОК" с id "text-field_ok_button"
    #город
    Тогда Пользователь нажимает элемент "город" с id "user-edit-profile_city_text-field"
    И Двигаемся по направлению "Вверх" "2" раз в списке с классом "XCUIElementTypeOther" и индексом "1" который находится в элементе с классом "XCUIElementTypeWindow" и индексом "1"
    И Ждем "4" секунд(ы)
    И Пользователь нажимает элемент "Клавиша ОК" с id "text-field_ok_button"
    #Адрес регистрации
    И Записываем в файл с названием "АДРЕС" всё значение текста элемента "Адрес" с id "user-edit-profile_place-of-registration_text-field"
    Тогда Пользователь вводит в поле "Адрес" с ID "user-edit-profile_place-of-registration_text-field" "Галактическая империя  Star Destroyer"
    И Проверяем, что значение текста элемента "" с id "user-edit-profile_place-of-registration_text-field", не совпадает с записанным в файле "АДРЕС"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    #ИНН
    И Записываем в файл с названием "ИНН" всё значение текста элемента "ИНН" с id "user-edit-profile_individual-tax-number_text-field"
    Тогда Пользователь вводит в поле "ИНН" с ID "user-edit-profile_individual-tax-number_text-field" "231294414583"
    И Проверяем, что значение текста элемента "ИНН" с id "user-edit-profile_individual-tax-number_text-field", не совпадает с записанным в файле "ИНН"
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
    # Сохраняем и проверяем что все сохранилось
    Тогда Пользователь нажимает элемент "Клавиша сохранить" с id "user-edit-profile_save_button"
    # Данные успешно сохранены
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что у элемента "ОК" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    И Пользователь нажимает элемент "Клавиша редактировать" с id "editButton"
    К тому же Проверяем, что скриншот "СКРИН_1" не совпадает с новым "СКРИН_2" с расположением по x "0.1" y "0.1" обрезанным на x "0.9" и y "0.9"

  Сценарий: Проверяем редактирование профиля на свежесозданном аккаунте - активация Email
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    Когда Пользователь нажимает элемент "Клавиша редактировать" с id "editButton"
    # выбираем редактировать
    Тогда Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Редактирование профиля" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "alert-controller_alert_view"
    Также Ждем появления элемента "Фамилия" с id "user-edit-profile_surname_text-field", но не более "10" секунд
    И Делаем скриншот экрана "СКРИН_3" и обрезаем его начиная с x "0.1" y "0.1" на расстояние x "0.9" и y "0.9"
    # Заходим в редатирование купона
    Тогда Пользователь нажимает элемент "Кнопка сохранить" с id "user-edit-profile_save_button"
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    Когда Пользователь нажимает элемент "Клавиша редактировать" с id "editButton"
    Тогда Пользователь нажимает элемент "Редактирование профиля" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с id "alert-controller_alert_view"
    # Алерт о том чтобы верифицировать Email
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что у элемента "ОК" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # закрываем алерт
    Тогда Пользователь нажимает элемент "ОК" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд

  Сценарий: Выход из аккаунта
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    # Выходим из профиля повторно
    И Пользователь нажимает элемент "Выход из профиля" с id "menu_logout_button"
    # Первое сообщение
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    # Нажимаем ДА
    Тогда Пользователь нажимает элемент "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    #  Ждем второе сообщение Очистить данные
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    # Нажимаем НЕТ
    Тогда Пользователь нажимает элемент "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"

  Сценарий: Авторизация
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    #И Проверяем наличие элемента "Клавиша пропустить" с name "tutorial_skip_button"
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    И Проверяем наличие элемента "Клавиша меню" с id "menuIcon"
    Когда Пользователь нажимает элемент "Клавиша меню" с id "menuIcon"
    #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "Авторизация"
    # Заполняем соотвтствующи поля логин и пароль
    И Ждем появления элемента "Клавиша назад" с id "buttonLeft", но не более "10" секунд
    И Ждем появления элемента "Поле ввода логина" с id "authorization_login_text-field", но не более "10" секунд
    Тогда Пользователь авторизуется с аккаунтом без средств название телефона "Samsung_Galaxy_Tab"

  Сценарий: Информация об аккаунте
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    #Проверяем верхнюю панель
    И Проверяем наличие элемента "Кнопка назад" с id "buttonLeft"
    И Проверяем наличие элемента "Кнопка редактировать" с id "editButton"
    # Проверяем общую панель формы
    # Первый блок
    И Проверяем, что у элемента "Данные аккаунта" с id "info-tabel-header-footer-view_title_label" вложенного в элемент с id "info-table-header_element-0_view" есть лейбл
    И Проверяем, что у элемента "Лицевой счет" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-0_cell" есть лейбл
    И Проверяем, что у элемента "Лицевой счет Тип" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-0-0_cell" есть лейбл
    Также Проверяем наличие элемента "Стрелка" с id "disclosure"
    И Проверяем, что у элемента "ID лицевого счета" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-1_cell" есть лейбл
    И Проверяем, что у элемента "ID лицевого счета номер" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-0-1_cell" есть лейбл
    И Проверяем, что у элемента "ID пользователя" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-2_cell" есть лейбл
    И Проверяем, что у элемента "ID пользователя номер" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-0-2_cell" есть лейбл
    И Проверяем, что у элемента "Нерассчитанные ставки" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-3_cell" есть лейбл
    И Проверяем, что у элемента "-" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-0-3_cell" есть лейбл
    И Проверяем, что у элемента "Промо баланс" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-4_cell" есть лейбл
    И Проверяем, что у элемента "Сумма средств промо" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-0-4_cell" есть лейбл
    И Проверяем, что у элемента "Промо-коды" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-5_cell" есть лейбл
    Также Проверяем наличие элемента "Стрелка" с id "disclosure"
    И Проверяем, что у элемента "VIP кэшбек" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-0-6_cell" есть лейбл
    Также Проверяем наличие элемента "Стрелка" с id "disclosure"
    # Второй блок
    И Проверяем, что у элемента "Профиль" с id "info-tabel-header-footer-view_title_label" вложенного в элемент с id "info-table-header_element-1_view" есть лейбл
    И Проверяем, что у элемента "Настройки профиля" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-1-0_cell" есть лейбл
    И Проверяем, что у элемента "2-х факторная авторизация" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-switch-1-1_cell" есть лейбл
    Также Проверяем наличие элемента "Переключатель" с id "table-cell_switch_switch-control"
    И Пользователь делает свайп вниз до элемента с id "info-table_element-info-3-5_cell"
    И Проверяем, что у элемента "Вход с помощью Touch-id" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-switch-1-2_cell" есть лейбл
    Также Проверяем наличие элемента "Переключатель" с id "table-cell_title_label" и индексом "1"
    # Третий блок
    И Проверяем наличие элемента "История" с id "info-table-header_element-2_view"
    И Проверяем, что у элемента "Ставок" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-2-0_cell" есть лейбл
    Также Проверяем наличие элемента "Стрелка" с id "disclosure"
    И Проверяем, что у элемента "Операций" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-2-1_cell" есть лейбл
    Также Проверяем наличие элемента "Стрелка" с id "disclosure"
    # Четвертый блок
    И Проверяем наличие элемента "Социальные сети заголовок" с id "info-table-header_element-3_view"
    И Проверяем, что у элемента "Twitter" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-0_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-0_cell" есть лейбл
    И Проверяем наличие элемента "Иконка твитер" с id "table-cell_icon_image-view" и индексом "0"
    И Проверяем, что у элемента "Vkontakte" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-1_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-1_cell" есть лейбл
    И Проверяем наличие элемента "Иконка vkontakte" с id "table-cell_icon_image-view" и индексом "1"
    И Проверяем, что у элемента "Odnoklassniki" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-2_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-2_cell" есть лейбл
    И Проверяем наличие элемента "Иконка odnaklassniki" с id "table-cell_icon_image-view" и индексом "2"
    И Проверяем, что у элемента "Google +" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-3_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-3_cell" есть лейбл
    И Проверяем наличие элемента "Иконка google +" с id "table-cell_icon_image-view" и индексом "3"
    И Проверяем, что у элемента "Yandex" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-4_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-4_cell" есть лейбл
    И Проверяем наличие элемента "Иконка yandex" с id "table-cell_icon_image-view" и индексом "4"
    И Делаем свайп вниз
    И Проверяем, что у элемента "Mail" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-3-5_cell" есть лейбл
    И Проверяем, что у элемента "Подключить" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-3-5_cell" есть лейбл
    И Проверяем наличие элемента "Иконка mail" с id "table-cell_icon_image-view" и индексом "5"
    # Пятый блок
    Тогда Проверяем наличие элемента "Данные пользователя" с id "info-table-header_element-4_view" и индексом "0"
    И Проверяем, что у элемента "Фамилия" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-0_cell" есть лейбл
    И Проверяем, что у элемента "Фамилия значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-0_cell" есть лейбл
    И Проверяем, что у элемента "Имя" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-1_cell" есть лейбл
    И Проверяем, что у элемента "Имя значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-1_cell" есть лейбл
    И Проверяем, что у элемента "Отчество" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-2_cell" есть лейбл
    И Проверяем, что у элемента "Отчество значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-2_cell" есть лейбл
    И Проверяем, что у элемента "Страна" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-3_cell" есть лейбл
    И Проверяем, что у элемента "Страна значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-3_cell" есть лейбл
    И Проверяем, что у элемента "Город" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-4_cell" есть лейбл
    И Проверяем, что у элемента "Город значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-4_cell" есть лейбл
    И Проверяем, что у элемента "Мобильный телнфон" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-5_cell" есть лейбл
    И Проверяем, что у элемента "Мобильный телнфон значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-5_cell" есть лейбл
    И Проверяем, что у элемента "Email" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-4-6_cell" есть лейбл
    И Проверяем, что у элемента "Email значение" с id "table-cell_info_label" вложенного в элемент с id "info-table_element-info-4-6_cell" есть лейбл

  Сценарий: Проверка добавления счета
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    #Проверяем верхнюю панель
    И Проверяем наличие элемента "Кнопка назад" с id "buttonLeft"
    И Проверяем наличие элемента "Кнопка редактировать" с id "editButton"
    # Проверяем добавить счет
    Когда Пользователь нажимает элемент "Основной" с id "table-cell_info_label"
    И Ждем появления элемента "Лицевой счет" с id "info-table-header_element-0_view", но не более "10" секунд
    И Проверяем, что у элемента "Лицевой счет" с id "info-tabel-header-footer-view_title_label" вложенного в элемент с id "info-table-header_element-0_view" есть лейбл
    # проверяем информацию о счете
    Тогда Проверяем, что у элемента "Лицевой счет" с id "info-tabel-header-footer-view_title_label" вложенного в элемент с id "info-table-header_element-0_view" есть лейбл
    Тогда Проверяем, что у элемента "Лицевой счет сумма на счете" с id "table-cell_info_label" вложенного в элемент с id "info-table-header_element-0_view" есть лейбл
    Также Проверяем наличие элемента "Иконка - галка" с id "table-cell_icon_image-view"
    # Проверяем кнопку добавить
    И Проверяем, что у элемента "Добавить счет" с id "table-cell_title_label" вложенного в элемент с id "info-table_element-info-1-0_cell" есть лейбл
    И Делаем скриншот экрана "ДО" и обрезаем его начиная с x "0.01" y "0.1" на расстояние x "0.99" и y "0.9"
    # нажимаем добавить счет
    Тогда Пользователь нажимает элемент "Добавить счет" с id "table-cell_title_label"
    И Ждем появления элемента "" с id "", но не более "10" секунд
    # ДОБАВИТЬ КОГДА АЙДИШНИКИ БУДУТ

  Сценарий: Проверка перехода в список промокодов
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    #Проверяем верхнюю панель
    И Проверяем наличие элемента "Кнопка назад" с id "buttonLeft"
    И Проверяем наличие элемента "Кнопка редактировать" с id "editButton"
    # Переходим в список промокоды
    Тогда Пользователь нажимает элемент "Промо-коды" с id "table-cell_title_label" с индексом "0", вложенный в элемент с id "info-table_element-info-0-5_cell"
    И Ждем появления элемента "Фильтр промо" с id "filterButtonTime", но не более "10" секунд
 # ДОБАВИТЬ КОГДА АЙДИШНИКИ БУДУТ

  @profile
  Сценарий: Вип кэшбек
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
     #выбираем меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    Тогда Пользователь нажимает элемент "Кнопка Юзера" с id "menu_user_button"
    И Ждем появления элемента "Клавиша редактировать" с id "editButton", но не более "10" секунд
    #Проверяем верхнюю панель
    И Проверяем наличие элемента "Кнопка назад" с id "buttonLeft"
    И Проверяем наличие элемента "Кнопка редактировать" с id "editButton"
    # Переходим в список промокоды
    Тогда Пользователь нажимает элемент "Промо-коды" с id "table-cell_title_label" с индексом "0", вложенный в элемент с id "info-table_element-info-0-5_cell"
    И Ждем появления элемента "Фильтр промо" с id "filterButtonTime", но не более "10" секунд