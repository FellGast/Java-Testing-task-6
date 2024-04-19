# language: ru

# Тестовые данные:
  # $Наименование Картофель
  # $Тип Овощ
  # $Экзотический false

@authorization
Функция: Список товаров


  Сценарий: Создание записи об овоще

    * страница "Список товаров" загружена
    * приостановлено выполнение на "2" секунд
    * выполнено нажатие на "Добавить"
    * приостановлено выполнение на "2" секунд
    * страница "Добавление товара" загружена
    * заполняются поля:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотический | #{Экзотический} |
    * приостановлено выполнение на "2" секунд
    * выполнено нажатие на "Сохранить"
    * приостановлено выполнение на "2" секунд
    * страница "Список товаров" загружена
    * ожидается элемент коллекции "Таблица" в течение "2" секунд с параметрами:
      | field        | value           |
      | Наименование | #{Наименование} |
      | Тип          | #{Тип}          |
      | Экзотический | #{Экзотический} |
    * выполнено нажатие на "Песочница"
    * приостановлено выполнение на "2" секунд
    * выполнено нажатие на "Сброс данных"
    * приостановлено выполнение на "2" секунд