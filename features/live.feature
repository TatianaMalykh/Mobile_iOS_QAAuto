#language: ru
@live
Функциональность: Live

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

  Сценарий: События (виды спорта)
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    И Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "menu_menuLive_cell"
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
#    Проверка фильтра прямых трансляций
    И Делаем скриншот экрана "События" и обрезаем его начиная с x "0.01" y "0.15" на расстояние x "0.99" и y "0.85"
    И Пользователь нажимает элемент "Фильтр_трансляций" класса "XCUIElementTypeButton" с индексом "2", вложенный в элемент с классом "XCUIElementTypeNavigationBar"
    И Ждем "2" секунд(ы)
    И Проверяем, что скриншот "События" не совпадает с новым "События_с_видео" с расположением по x "0.01" y "0.15" обрезанным на x "0.99" и y "0.85"
#    множественный выбор
    И Записываем в файл с названием "Событие_3" значение текста элемента "Событие" класса "XCUIElementTypeStaticText" с индексом "0", находящегося в элементе с id "sports-champs_element-0-2_cell"
    И Пользователь нажимает элемент "Событие_2" с id "sports-champs_element-0-1_checkbox"
    И Пользователь нажимает элемент "Событие_3" с id "sports-champs_element-0-2_checkbox"
    И Пользователь нажимает элемент "Перейти в фильтр" с id "buttonRight"
    И Ждем появления элемента "Заголовок события" с id "games-collection-header_element-0-0_view", но не более "5" секунд
    И Проверяем, что значение текста элемента "Событие" с id "games-collection-header_name_label" и индексом "1" а также позицией в тексте "1", соответствует записанному в файле с названием "Событие_3"
@wip
  Сценарий: Чемпионаты
    Дано ПРОВЕРКА НА РАЗРЕШИТЬ УВЕДОМЛЕНИЯ НОВОМУ ПРИЛОЖЕНИЮ
    И ПРОВЕРКА НА ОБНОВЛНИЕ
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    Также Ждем появления элемента "Клавиша меню" с id "menuUser", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И ПРОВЕРКА НА ПРОПУСТИТЬ
    И Делаем свайп вправо
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "menu_menuLive_cell"
    И Ждем появления элемента "Событие" с id "sports-champs_element-0-0_cell", но не более "5" секунд
#    проверка элементов экрана
    И Пользователь нажимает элемент "Футбол" с id "sports-champs_element-0-0_cell"
    И Проверяем наличие элемента "Назад" с id "buttonLeft"
    И Проверяем наличие элемента "Далее" с id "buttonRight"
    И Проверяем наличие элемента "Лайв" класса "XCUIElementTypeButton" с индексом "0", вложенного в элемент id "sports-champs_segments_segmented-control"
    И Проверяем наличие элемента "Линия" класса "XCUIElementTypeButton" с индексом "1", вложенного в элемент id "sports-champs_segments_segmented-control"
    И Проверяем, что у элемента "Лайв" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "sports-champs_segments_segmented-control", есть лейбл
    И Проверяем, что у элемента "Линия" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "sports-champs_segments_segmented-control", есть лейбл
    И Проверяем наличие элемента "Заголовок" с id "games-collection-header_element-0-0_view"
    И Проверяем наличие элемента "Картинка спорта" с id "games-collection-header_icon_image-view"
    И Проверяем наличие элемента "Название спорта" с id "games-collection-header_name_label"
    И Проверяем, что у элемента "Название спорта" с id "games-collection-header_name_label" есть лейбл
    И Проверяем наличие элемента "Чемпионат" с id "sports-champs_element-0-0_cell"
    И Проверяем наличие элемента "Чекбокс" с id "sports-champs_element-0-0_checkbox"
    И Проверяем, что у элемента "Название_чампа" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "sports-champs_element-0-0_cell", есть лейбл
    И Проверяем, что у элемента "Число_событий" класса "XCUIElementTypeStaticText" с индексом "2", вложнного в элемент с id "sports-champs_element-0-0_cell", есть лейбл
    И Находим все элементы класса "XCUIElementTypeStaticText" узла класса "XCUIElementTypeCollectionView" и выводим их текст в лог
#    множественный выбор
    И Пользователь нажимает элемент "Чемп_1" с id "sports-champs_element-0-0_checkbox"
    И Пользователь нажимает элемент "Чемп_2" с id "sports-champs_element-0-1_checkbox"
    И Пользователь нажимает элемент "Перейти в фильтр" с id "buttonRight"
    И Ждем появления элемента "Игра1" с id "games-collection_element-0-0_cell", но не более "5" секунд
    И Проверяем наличие элемента "Список ставок" с id "gamesListBets"
    И Проверяем наличие элемента "Список подыгр" с id "gamesListSubgames"












