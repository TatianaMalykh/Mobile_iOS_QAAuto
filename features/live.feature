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

  Сценарий: Игры
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
#    проверка элементов экрана игр
    И Пользователь нажимает элемент "Футбол" с id "sports-champs_element-0-0_cell"
    И Ждем "2" секунд(ы)
    И Пользователь нажимает элемент "Чемп_1" с id "sports-champs_element-0-0_checkbox"
    И Пользователь нажимает элемент "Перейти в фильтр" с id "buttonRight"
    И Ждем появления элемента "Игра1" с id " ", но не более "5" секунд
    И Проверяем наличие элемента "Список ставок" с id "gamesListBets"
    И Проверяем наличие элемента "Список подыгр" с id "gamesListSubgames"
    И Проверяем наличие элемента "Картинка" с id "game_sport_image"
    И Проверяем наличие элемента "Название игры" с id "game_champ-name_label"
    И Проверяем, что у элемента "Название игры" с id "game_champ-name_label" есть лейбл
    И Проверяем наличие элемента "Видео" с id "game_video_button", которого может не существовать
    И Проверяем наличие элемента "Нотификация" с id "game_notification_button"
    И Проверяем наличие элемента "Избранное" с id "game_favorite_button"
    И Проверяем наличие элемента "Название команды 1" с id "game_opponent1_label"
    И Проверяем, что у элемента "Название команды 1" с id "game_opponent1_label" есть лейбл
    И Проверяем наличие элемента "Картинка1" с id "game_opponent1_image"
    И Проверяем наличие элемента "Счет" с id "game_score_label"
    И Проверяем, что у элемента "Счет" с id "game_score_label" есть лейбл
    И Проверяем наличие элемента "Название команды 2" с id "game_opponent2_label"
    И Проверяем, что у элемента "Название команды 2" с id "game_opponent2_label" есть лейбл
    И Проверяем наличие элемента "Картинка2" с id "game_opponent2_image"
    И Проверяем наличие элемента "Инфо" с id "game_info_label"
    И Проверяем, что у элемента "Инфо" с id "game_info_label" есть лейбл
    И Проверяем наличие элемента "Ячейка первой ставки" с id "game_bottom-item-0-0_cell"
    И Проверяем наличие элемента "Название первой ставки" с id "game_bet-name_label"
    И Проверяем, что у элемента "Название первой ставки" с id "game_bet-name_label" есть лейбл
    И Проверяем наличие элемента "Победа1" с id "game_bet-value-0_view"
    И Проверяем, что у элемента "П1" с id "game_bet-value-name_label" вложенного в элемент с id "game_bet-value-0_view" есть лейбл
    И Проверяем, что у элемента "Кэф" с id "game_bet-value-coef_label" вложенного в элемент с id "game_bet-value-0_view" есть лейбл
    И Проверяем наличие элемента "Ничья" с id "game_bet-value-1_view"
    И Проверяем, что у элемента "Ничья" с id "game_bet-value-name_label" вложенного в элемент с id "game_bet-value-1_view" есть лейбл
    И Проверяем, что у элемента "Кэф" с id "game_bet-value-coef_label" вложенного в элемент с id "game_bet-value-1_view" есть лейбл
    И Проверяем наличие элемента "Победа2" с id "game_bet-value-2_view"
    И Проверяем, что у элемента "П2" с id "game_bet-value-name_label" вложенного в элемент с id "game_bet-value-2_view" есть лейбл
    И Проверяем, что у элемента "Кэф" с id "game_bet-value-coef_label" вложенного в элемент с id "game_bet-value-2_view" есть лейбл
#    события для уведомлений

#   НОТИФИКАЦИИ В ВЫДАННОЙ СБОРКЕ НЕ РАБОТАЮТ

#   Добавление в Избранное
    И Записываем в файл с названием "Игра1" всё значение текста элемента "Первая игра в списке" с id "game_champ-name_label"
    И Пользователь нажимает элемент "Избранное" с id "game_favorite_button" по координатам этого элемента
    И Ждем появления элемента "Иконка избранного" с id "sports-champs_element-0-0_checkbox", но не более "5" секунд
    И Пользователь нажимает элемент "Выбрать все" с id "sports-champs_element-0-0_checkbox" с индексом "0", вложенный в элемент с id "sports-champs_element-0-0_cell"
    И Пользователь нажимает элемент "Назад" с id "buttonLeft" по координатам этого элемента
    И Делаем свайп вправо
    И Выбираем в меню элемент "menu_menuFavorite_cell"
    И Проверяем, что значение текста элемента "Первая игра в избранном" с id "game_champ-name_label", совпадает с записанным в файле "Игра1"
    И Пользователь нажимает элемент "Удалить" с id "deleteButton"
    И Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "5" секунд
    И Пользователь нажимает элемент "Продолжить" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Пусто" с id "view-empty_message_label", но не более "10" секунд

  Сценарий: Игра
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
#    данные по игре
    И Пользователь нажимает элемент "Футбол" с id "sports-champs_element-0-0_cell"
    И Ждем "2" секунд(ы)
    И Пользователь нажимает элемент "Чемп_1" с id "sports-champs_element-0-0_checkbox"
    И Пользователь нажимает элемент "Перейти в фильтр" с id "buttonRight"
    И Ждем появления элемента "Игра1" с id "games-collection_element-0-0_cell", но не более "5" секунд
    И Проверяем наличие элемента "Список ставок" с id "gamesListBets"
    И Пользователь нажимает элемент "Игра" с id "games-collection_element-0-0_cell"
    И Ждем "2" секунд(ы)

    И Проверяем, что у элемента "Статистика" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с классом "XCUIElementTypeSegmentedControl", есть лейбл
    И Проверяем, что у элементов "Видео и Плейзон" класса "XCUIElementTypeButton", вложенных в элемент с классом "XCUIElementTypeSegmentedControl", есть лейбл

    И Проверяем наличие элемента "Прошло времени" с id "game-info-stat-container_time_label"
    И Проверяем, что в элементе "Прошло времени" с id "game-info-stat-container_time_label" есть текст
    И Проверяем наличие элемента "Иконка нотификации" с id "game-info-stat-container_notification_button"
    И Проверяем наличие элемента "Картинка для невыбранной нотификации" с id "gameNotificationIconOff"
    И Проверяем наличие элемента "Иконка избранного" с id "game-info-stat-container_favorite_button"
    И Проверяем наличие элемента "Картинка для не добавленного в избранное матча" с id "favoriteOff"
    И Проверяем наличие элемента "Иконка расширенной статистики" с id "game-info-stat-container_full-statistic_button", которого может не существовать
    И Проверяем наличие элемента "Картинка для расширенной статистики" с id "gameStat", которого может не существовать
    И Проверяем наличие элемента "Маркеты" с id "game-info-stat-container_market_button", которого может не существовать
    И Проверяем наличие элемента "Картинка для маркетов" с id "gameMarkets", которого может не существовать
    И Проверяем наличие элемента "Лого_первой_команды" с id "game-info-stat_first-team-name_label"
    И Проверяем наличие элемента "Лого второй_команды" с id "game-info-stat_second-team-name_label"
    И Проверяем наличие элемента "Счёт" с id "game-info-stat_middle_label"
    И Проверяем наличие элемента "Добавить_первую_команду_в избранное" с id "game-info-stat_first-team-favorite_button"
    И Проверяем наличие элемента "Добавить_вторую_команду_в_избранное" с id "game-info-stat_second-team-favorite_button"
    И Проверяем наличие элемента "Название первой команды" с id "game-info-stat_first-team-name_label"
    И Проверяем наличие элемента "Название второй команды" с id "game-info-stat_second-team-name_label"
    И Проверяем, что в элементе "Название первой команды" с id "game-info-stat_first-team-name_label" есть текст
    И Проверяем, что в элементе "Название второй команды" с id "game-info-stat_second-team-name_label" есть текст
    И Проверяем наличие элемента "Статус_игры" с id "game-info-stat-container_game-status_label"
    И Проверяем, что в элементе "Статус игры" с id "game-info-stat-container_game-status_label" есть текст
#   Добавление в Избранное
    И Записываем в файл с названием "Команда1" всё значение текста элемента "Первая команда" с id "game-info-stat_first-team-name_label"
    И Пользователь нажимает элемент "Избранное" с id "game-info-stat_first-team-favorite_button" по координатам этого элемента
    И Делаем свайп вправо
    И Выбираем в меню элемент "menu_menuFavorite_cell"
    И Пользователь нажимает элемент "Команды" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "favorites_segments_segmented-control"
    И Ждем появления элемента "Название команды" с id "team-favorite-cell_name_label", но не более "10" секунд
    И Проверяем, что значение текста элемента "Команда в избранном" с id "team-favorite-cell_name_label", совпадает с записанным в файле "Команда1"
    И Пользователь нажимает элемент "Удалить" с id "deleteButton"
    И Ждем появления элемента "Алерт" с id "alert-controller_alert_view", но не более "5" секунд
    И Пользователь нажимает элемент "Продолжить" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    И Ждем появления элемента "Пусто" с id "view-empty_message_label", но не более "10" секунд
  @wip
  Сценарий: Статистика
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
    И Пользователь нажимает элемент "Футбол" с id "sports-champs_element-0-0_cell"
    И Ждем "2" секунд(ы)
    И Пользователь нажимает элемент "Чемп_1" с id "sports-champs_element-0-0_checkbox"
    И Пользователь нажимает элемент "Перейти в фильтр" с id "buttonRight"
    И Ждем появления элемента "Игра1" с id "games-collection_element-0-0_cell", но не более "5" секунд
    И Проверяем наличие элемента "Список ставок" с id "gamesListBets"
    И Пользователь нажимает элемент "Игра" с id "games-collection_element-0-0_cell"
    И Ждем появления элемента "Уголочек" с id "gameHideShowMenu", но не более "10" секунд
    И Ждем "2" секунд(ы)
    И Делаем свайп по параметрам x: "235" y: "175" x_end: "45" y_end: "175"
    И Ждем появления элемента "Название 1 команды" с id "game-info-period-stat_first-team-name_label", но не более "5" секунд
    И Проверяем наличие элемента "Прошло времени" с id "game-info-stat-container_time_label"
    И Проверяем, что в элементе "Прошло времени" с id "game-info-stat-container_time_label" есть текст
    И Проверяем наличие элемента "Иконка нотификации" с id "game-info-stat-container_notification_button"
    И Проверяем наличие элемента "Картинка для невыбранной нотификации" с id "gameNotificationIconOff"
    И Проверяем наличие элемента "Иконка избранного" с id "game-info-stat-container_favorite_button"
    И Проверяем наличие элемента "Картинка для не добавленного в избранное матча" с id "favoriteOff"
    И Проверяем наличие элемента "Инфо о периодах" с id "game-info-period-stat_times_label"
    И Проверяем, что у элемента "Инфо о периодах" с id "game-info-period-stat_times_label" есть лейбл
    И Проверяем наличие элемента "Итог" с id "game-info-period-stat_result_label"
    И Проверяем, что у элемента "Итог" с id "game-info-period-stat_result_label" есть лейбл
    И Проверяем наличие элементов "Цифры таблицы" с name "game-info-period-stat-cell_goal_label" и выводим их количество в лог
    И Проверяем наличие элемента "Команда1" с id "game-info-period-stat_first-team-name_label"
    И Проверяем, что у элемента "Команда1" с id "game-info-period-stat_first-team-name_label" есть лейбл
    И Проверяем наличие элемента "Команда2" с id "game-info-period-stat_second-team-name-label"
    И Проверяем, что у элемента "Команда2" с id "game-info-period-stat_second-team-name-label" есть лейбл
    И Проверяем наличие элемента "Очков у команды1" с id "game-info-period-stat_first-team-goal_label"
    И Проверяем, что у элемента "Очков у команды1" с id "game-info-period-stat_first-team-goal_label" есть лейбл
    И Проверяем наличие элемента "Очков у команды2" с id "game-info-period-stat_result_label"
    И Проверяем, что у элемента "Очков у команды2" с id "game-info-period-stat_result_label" есть лейбл
    И Проверяем наличие элемента "Статус игры" с id "game-info-stat-container_game-status_label"
    И Проверяем, что у элемента "Статус игры" с id "game-info-stat-container_game-status_label" есть лейбл
    


     



