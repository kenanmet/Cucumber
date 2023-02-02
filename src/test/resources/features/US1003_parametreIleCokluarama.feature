
Feature: US1003 Kullanici parametre olarak girilen degerleri aratir

  Scenario: TC03 Kullanici parametreli method ile nutella aratir
    Given kullanici amazon anasayfaya gider
    Then amazon arama kutusuna "nutella" yazip aratir
    And arama sonuclarinin "nutella" icerdigini test eder
    And sayfayi kapatir


  Scenario: TC04 Kullanici parametreli method ile java aratir
    Given kullanici amazon anasayfaya gider
    Then amazon arama kutusuna "java" yazip aratir
    And arama sonuclarinin "java" icerdigini test eder
    And sayfayi kapatir


  Scenario: TC05 Kullanici parametreli method ile java aratir
    Given kullanici amazon anasayfaya gider
    Then amazon arama kutusuna "samsung" yazip aratir
    And arama sonuclarinin "samsung" icerdigini test eder
    And sayfayi kapatir