Feature: US1001 Kullanici amazonda arama yapar

  Scenario: TC01 Kullanici amazonda nutella aratir

    Given kullanici amazon anasayfaya gider
    Then amazon arama kutusuna nutella yazip aratir
    And arama sonuclarinin nutella icerdigini test eder
    Then sayfayi kapatir


