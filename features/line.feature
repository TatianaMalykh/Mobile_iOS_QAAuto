#language: ru
@line
Функциональность: Line
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
    И Выбираем в меню элемент "menu_menuLogIn_cell"
    # Заполняем соотвтствующи поля логин и пароль
    И Ждем появления элемента "Клавиша назад" с id "buttonLeft", но не более "10" секунд
    И Ждем появления элемента "Поле ввода логина" с id "authorization_login_text-field", но не более "10" секунд
    Тогда Пользователь авторизуется с аккаунтом без средств название телефона "Samsung_Galaxy_Tab"
    И Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
@wip
  Сценарий: События (виды спорта)
#    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
#    И ПРОВЕРКА НА ОБНОВЛНИЕ
#    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
#    И ПРОВЕРКА НА ПРОПУСТИТЬ
    И Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "menu_menuLine_cell"
    И Ждем появления элемента "Событие" с id "sports-champs_element-0-0_cell", но не более "5" секунд
#    Проверяем элементы экрана
    И Проверяем наличие элемента "Назад" с id "buttonLeft"
    И Проверяем наличие элемента "Далее" с id "buttonRight"
    И Проверяем наличие элемента "Лайв" класса "XCUIElementTypeButton" с индексом "0", вложенного в элемент id "sports-champs_segments_segmented-control"
    И Проверяем наличие элемента "Линия" класса "XCUIElementTypeButton" с индексом "1", вложенного в элемент id "sports-champs_segments_segmented-control"
    И Проверяем, что у элемента "Лайв" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "sports-champs_segments_segmented-control", есть лейбл
    И Проверяем, что у элемента "Линия" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "sports-champs_segments_segmented-control", есть лейбл
    И Проверяем наличие элемента "Спорт0" с id "sports-champs_element-0-0_cell"
    И Проверяем наличие элемента "Чекбокс0" с id "sports-champs_element-0-0_checkbox"
    И Проверяем, что у элемента "Название_спорта0" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-0_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий0" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-0_cell", есть лейбл
    И Проверяем наличие элемента "Спорт1" с id "sports-champs_element-0-1_cell"
    И Проверяем наличие элемента "Чекбокс1" с id "sports-champs_element-0-1_checkbox"
    И Проверяем, что у элемента "Название_спорта1" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-1_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий1" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-1_cell", есть лейбл
    И Проверяем наличие элемента "Спорт2" с id "sports-champs_element-0-2_cell"
    И Проверяем наличие элемента "Чекбокс2" с id "sports-champs_element-0-2_checkbox"
    И Проверяем, что у элемента "Название_спорта2" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-2_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий2" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-2_cell", есть лейбл
    И Проверяем наличие элемента "Спорт3" с id "sports-champs_element-0-3_cell"
    И Проверяем наличие элемента "Чекбокс3" с id "sports-champs_element-0-3_checkbox"
    И Проверяем, что у элемента "Название_спорта3" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-3_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий3" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-3_cell", есть лейбл
    И Проверяем наличие элемента "Спорт4" с id "sports-champs_element-0-4_cell"
    И Проверяем наличие элемента "Чекбокс4" с id "sports-champs_element-0-4_checkbox"
    И Проверяем, что у элемента "Название_спорта4" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-4_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий4" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-4_cell", есть лейбл
    И Проверяем наличие элемента "Спорт5" с id "sports-champs_element-0-5_cell"
    И Проверяем наличие элемента "Чекбокс5" с id "sports-champs_element-0-5_checkbox"
    И Проверяем, что у элемента "Название_спорта5" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-5_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий5" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-5_cell", есть лейбл
    И Проверяем наличие элемента "Спорт6" с id "sports-champs_element-0-6_cell"
    И Проверяем наличие элемента "Чекбокс6" с id "sports-champs_element-0-6_checkbox"
    И Проверяем, что у элемента "Название_спорта6" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-6_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий6" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-6_cell", есть лейбл
    И Проверяем наличие элемента "Спорт7" с id "sports-champs_element-0-7_cell"
    И Проверяем наличие элемента "Чекбокс7" с id "sports-champs_element-0-7_checkbox"
    И Проверяем, что у элемента "Название_спорта7" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-7_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий7" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-7_cell", есть лейбл
#    Проверка фильтра времени
#    30 минут
    И Делаем скриншот экрана "События" и обрезаем его начиная с x "0.01" y "0.2" на расстояние x "0.99" и y "0.9"
#    может быть, что индекс на самом деле 1
    И Записываем в файл значение текста элемента "Счетчик" класса "XCUIElementTypeStaticText" с индексом "2", находящегося в элементе с id "sports-champs_element-0-0_cell"
    И Пользователь нажимает элемент "Фильтр_времени" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с классом "XCUIElementTypeNavigationBar"
    И Ждем появления элемента "АЛЕРТ" с id "alert-controller_alert_view", но не более "10" секунд
#    Проверим лейблы и текст в кнопках алерта
    И Проверяем, что в элементе с id "alert-controller_alert_view" у элемента класса "XCUIElementTypeStaticText" с индексом "0" есть текст
    И Проверяем, что у элемента "без фильтра" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "30 мин" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "1 час" класса "XCUIElementTypeButton" с индексом "2", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "2 часа" класса "XCUIElementTypeButton" с индексом "3", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "4 часа" класса "XCUIElementTypeButton" с индексом "4", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "6 часов" класса "XCUIElementTypeButton" с индексом "5", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "1 день" класса "XCUIElementTypeButton" с индексом "6", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Делаем свайп вниз
    И Проверяем, что у элемента "2 дня" класса "XCUIElementTypeButton" с индексом "-2", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "Отмена" класса "XCUIElementTypeButton" с индексом "-1", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Делаем свайп вверх
    И Пользователь нажимает элемент "30 мин" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем "2" секунд(ы)
    И Проверяем, что скриншот "События" не совпадает с новым "события30" с расположением по x "0.01" y "0.2" обрезанным на x "0.99" и y "0.9"
    И Проверяем, что значение текста элемента "Счетчик" класса "XCUIElementTypeStaticText" с индексом "2", вложенного в элемент с id "sports-champs_element-0-0_cell", не совпадает с ранее записанным

















