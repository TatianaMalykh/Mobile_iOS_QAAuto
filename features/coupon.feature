#language: ru
@coupon
Функциональность: Coupon
# Пока по доброй традиции начинаем с того, что создаем пользователя
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
    И Делаем свайп вниз
#      Выбираем страну Абхазия
    К тому же Записываем в файл всё значение текста элемента "Страна" с id "registration-oneclick_country_text-field-ext"
    Когда Пользователь нажимает элемент "Страна" с id "registration-oneclick_country_text-field-ext"
    То Ждем появления элемента "Тулбар" с id "Toolbar", но не более "10" секунд
    К тому же Проверяем наличие элемента "Отмена" с id "text-field_cancel_button"
    И Проверяем наличие элемента "Далее" с id "text-field_next_button"
    Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
    И Проверяем, что значение всего текста элемента "Страна" с id "registration-oneclick_country_text-field-ext" не соответствует ранее записанному
#      Выбираем валюту Российский рубль
    К тому же Записываем в файл всё значение текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext"
    Когда Пользователь нажимает элемент "Валюта" с id "registration-oneclick_currency_text-field-ext"
    То Ждем появления элемента "Тулбар" с id "Toolbar", но не более "10" секунд
    К тому же Проверяем наличие элемента "Отмена" с id "text-field_cancel_button"
    И Проверяем наличие элемента "Назад" с id "text-field_previos_button"
    И Проверяем наличие элемента "Далее" с id "text-field_next_button"
    Тогда Пользователь нажимает элемент "Далее" с id "text-field_next_button"
    И Проверяем, что значение всего текста элемента "Валюта" с id "registration-oneclick_currency_text-field-ext" не соответствует ранее записанному
#      Проверяем, что пустой промокод имеет текст "Промо-код"
    И Проверяем, что в элементе "Промокод" с id "registration-oneclick_promo-code_text-field" есть текст
#      скрываем клавиатуру кнопкой Отмена
    И Пользователь нажимает на экранной клавиатуре "Отмена" с id "text-field_cancel_button"
#      Подтверждаем, что совершеннолетние, со всем согласны и жмем на регистрацию
    Когда Пользователь нажимает элемент "Подтвердить совершеннолетие" с id "registration_info_button" с индексом "1"
    И Пользователь нажимает элемент "Зарегистрироваться" с id "registration-oneclick_registration_button"
    И Ждем "2" секунд(ы)
    Тогда Пользователь видит окно об успешности регистрации с логином и паролем
    И Проверяем соответствие выданного логина автоподставленномму
    И Пользователь нажимает элемент "Войти" с id "authorization_auth_button"
    И Ждем "2" секунд(ы)
    Тогда Делаем свайп вправо
    И Ждем появления элемента "Пользователь" с id "menu_user_button", но не более "5" секунд
    И Проверяем наличие элемента "Иконка пользователя" с id "menuUser"

  Сценарий: Элементы экрана пустого купона
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
#    Смотрим в пустоту раздела купон в меню
    Тогда Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "menu_menuCoupon_cell"
#    Проверяем наличие всех элементов
    И Проверяем, что у элемента "Заголовок" класса "XCUIElementTypeOther" с индексом "0", вложнного в элемент с классом "XCUIElementTypeNavigationBar", есть лейбл
    И Проверяем наличие элемента "Корзиночка" с id "deleteButton"
    И Проверяем, что элемент "Корзиночка " с id "deleteButton" доступен и выводим значение атрибута "enabled"
    И Проверяем наличие элемента "Настройки" с id "settingsButton"
    И Проверяем наличие элемента "Кнопка генерации купона" с id "coupon-menu_generator_button"
    И Проверяем наличие элемента "Картинка генерации" с id "coupon-menu_generator_image"
    И Проверяем, что у элемента "Кнопка генерации купона" с id "coupon-menu_generator_label" есть лейбл
    И Проверяем наличие элемента "Кнопка Сделать ставку" с id "coupon-menu_bet_button"
    И Проверяем наличие элемента "Картинка для кнопки ставки" с id "coupon-menu_bet_image"
    И Проверяем, что у элемента "Кнопка Сделать ставку" с id "coupon-menu_bet_label" есть лейбл
    И Проверяем наличие элемента "Событий в купоне" с id "coupon-menu_events-title_label"
    И Проверяем, что у элемента "Событий в купоне" с id "coupon-menu_events-title_label" есть лейбл
    И Проверяем наличие элемента "Число событий" с id "coupon-menu_events-name_label"
    И Проверяем, что у элемента "Число событий" с id "coupon-menu_events-name_label" есть лейбл
    И Проверяем наличие элемента "Кэф" с id "coupon-menu_coef-title_label"
    И Проверяем, что у элемента "Кэф" с id "coupon-menu_coef-title_label" есть лейбл
    И Проверяем наличие элемента "Величина кэфа" с id "coupon-menu_coef-name_label"
    И Проверяем, что у элемента "Величина кэфа" с id "coupon-menu_coef-name_label" есть лейбл
    И Проверяем наличие элемента "Сохранить/загрузить" с id "coupon-menu_save-load_button"
    И Проверяем наличие элемента "Картинка для save/load" с id "coupon-menu_save-load_image"
    И Проверяем наличие элемента "Иконка иксбета" с id "iconLogoApp"
    И Проверяем, что у элемента "Пустота" с id "view-empty_message_label" и индексом "2" есть лейбл

    