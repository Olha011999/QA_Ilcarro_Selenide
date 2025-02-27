Feature: Добавление автомобиля

  Background: Открываем браузер и переходим на домашнюю страницу
    Given Пользователь запускает браузер
    When Пользователь открывает домашнюю страницу ilcarro
    And Пользователь нажимает на ссылку Login
    And Пользователь вводит валидные данные
    And Пользователь нажимает на кнопку Yalla
    Then Пользователь проверяет отображение сообщения об успешном логине

  @AddCar
  Scenario: Успешное добавление автомобиля
    And Пользователь нажимает кнопку  Let the car work
    When Пользователь вводит данные автомобиля
      | location | manufacture | model   | year | fuel   | seats | classCar | price | about        | photo                                                                                                    |
      | Haifa    | Chevrolet   | Orlando | 2012 | Diesel | 7     | Family   | 8     | The best car | C:\Users\admin\IdeaProjects\AIT_QA_Project\6_Ilcarro_Cucumber_Selenide\src\test\resources\Orlando.jpeg |
    And Пользователь нажимает кнопку Submit
    Then Пользователь проверяет сообщение "Chevrolet Orlando added successful"
    And Пользователь закрывает браузер