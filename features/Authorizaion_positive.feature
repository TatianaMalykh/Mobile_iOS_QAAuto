#language: ru
@Aut_p
Функциональность: Auhorization_positive

  Сценарий: Авторизация по логину
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
    # Проверяем отсутствие элементов
    Тогда Проверяем отсутствие элемента "Сообщение" с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Поле ввода логина" с id "authorization_login_text-field"
    И Проверяем отсутствие элемента "Поле ввода пароля" с id "authorization_password_text-field"
    И Проверяем отсутствие элемента "Клавиша воссановить пароль" с id "authorization_restore_button"
    И Проверяем отсутствие элемента "Клавиша авторизации" с id "authorization_auth_button"
    #Свайпаем на меню и смотрим что пользователь авторизовался
    Тогда Делаем свайп вправо
    И Ждем появления элемента "Пользователь" с id "menu_user_button", но не более "5" секунд
    И Проверяем наличие элемента "Иконка пользователя" с id "menuUser"
    # Дописать когда ID Для названия акаунта будет в меню

    # Выходим
    И Пользователь нажимает элемент "Выход из профиля" с id "menu_logout_button"
    # Первое сообщение
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    #И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем наличие элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем наличие элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем, что у элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # Нажимаем НЕТ
    Тогда Пользователь нажимает элемент "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Сообщение" с id "alert-controller_alert_view"
    # Выходим из профиля повторно
    И Пользователь нажимает элемент "Выход из профиля" с id "menu_logout_button"
    # Первое сообщение
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем наличие элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем наличие элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем, что у элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # Нажимаем ДА
    Тогда Пользователь нажимает элемент "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    #  Ждем второе сообщение Очистить данные
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    И Проверяем, что в элементе "Заголовок" класса "XCUIElementTypeStaticText" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем, что в элементе "Сообщение" класса "XCUIElementTypeStaticText" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть текст
    И Проверяем наличие элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем наличие элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенного в элемент id "alert-controller_alert_view"
    И Проверяем, что у элемента "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    И Проверяем, что у элемента "ДА" класса "XCUIElementTypeButton" с индексом "1", вложнного в элемент с id "alert-controller_alert_view", есть лейбл
    # Нажимаем НЕТ
    Тогда Пользователь нажимает элемент "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Алерт тайтл целиком" с id "alert-controller_alert_view"
    #Логинимся заново
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "Авторизация"
    И Ждем появления элемента "Клавиша назад" с id "buttonLeft", но не более "10" секунд
    И Ждем появления элемента "Поле ввода логина" с id "authorization_login_text-field", но не более "10" секунд
    И Провряем что в Поле Логин соответствуют значениям введенным для аккаунта "Samsung_Galaxy_Tab"
    # Заходим в аккаунт
    И Пользователь нажимает элемент "Кнопка авторизации" с id "authorization_auth_button"
    И Ждем "2" секунд(ы)
    Тогда Проверяем отсутствие элемента "Сообщение" с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Поле ввода логина" с id "authorization_login_text-field"
    И Проверяем отсутствие элемента "Поле ввода пароля" с id "authorization_password_text-field"
    И Проверяем отсутствие элемента "Клавиша воссановить пароль" с id "authorization_restore_button"
    И Проверяем отсутствие элемента "Клавиша авторизации" с id "authorization_auth_button"
    #Свайпаем на меню и смотрим что пользователь авторизовался
    Тогда Делаем свайп вправо
    И Ждем появления элемента "Пользователь" с id "menu_user_button", но не более "5" секунд
    И Проверяем наличие элемента "Иконка пользователя" с id "menuUser"
    И Пользователь нажимает элемент "Выход из профиля" с id "menu_logout_button"
    # Первое сообщение
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    # Нажимаем НЕТ
    Тогда Пользователь нажимает элемент "НЕТ" класса "XCUIElementTypeButton" с индексом "0", вложенный в элемент с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Сообщение" с id "alert-controller_alert_view"
    # Выходим из профиля повторно
    И Пользователь нажимает элемент "Выход из профиля" с id "menu_logout_button"
    # Первое сообщение
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    # Нажимаем ДА
    Тогда Пользователь нажимает элемент "ДА" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    #  Ждем второе сообщение Очистить данные
    И Ждем появления элемента "Алерт тайтл целиком" с id "alert-controller_alert_view", но не более "10" секунд
    # Нажимаем ДА
    Тогда Пользователь нажимает элемент "НЕТ" класса "XCUIElementTypeButton" с индексом "1", вложенный в элемент с id "alert-controller_alert_view"
    И Проверяем отсутствие элемента "Алерт тайтл целиком" с id "alert-controller_alert_view"
    # Проверяем что нет аккаунта сохраненного
    То Ждем появления элемента "Эмблема пользователь" с id "menuUser", но не более "10" секунд
    И Выбираем в меню элемент "Авторизация"
    И Ждем появления элемента "Клавиша назад" с id "buttonLeft", но не более "10" секунд
    И Ждем появления элемента "Поле ввода логина" с id "authorization_login_text-field", но не более "10" секунд
    И Провряем что в Поле Логин не соответствуют значениям введенным для аккаунта "Samsung_Galaxy_Tab"
