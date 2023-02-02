
Feature: US1004 Kullanici bastaki ortak adimlar icin Background kullanir

  Background: Tum scenario'lar icin ortak adim
    Given kullanici amazon anasayfaya gider

  Scenario: TC03 Kullanici parametreli method ile nutella aratir
    Then amazon arama kutusuna "nutella" yazip aratir
    And arama sonuclarinin "nutella" icerdigini test eder
    And sayfayi kapatir

  Scenario: TC04 Kullanici parametreli method ile java aratir
    Then amazon arama kutusuna "java" yazip aratir
    And arama sonuclarinin "java" icerdigini test eder
    And sayfayi kapatir

  Scenario: TC05 Kullanici parametreli method ile java aratir
    Then amazon arama kutusuna "samsung" yazip aratir
    And arama sonuclarinin "samsung" icerdigini test eder
    And sayfayi kapatir