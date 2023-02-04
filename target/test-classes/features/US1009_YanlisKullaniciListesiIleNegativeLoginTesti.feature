
  Feature: US1009_ Yanlis kullanici adi ve password listesi ile negatif login testi

    Scenario Outline: TC14 yanlis kullanici listesi ile giris yapilamamali
      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And mail kutusuna manuel olarak "<yanlisUsername>" yazar
      And password kutusuna manuel olarak "<yanlisPassword>" yazar
      And login butonuna basar
      And giris yapilamadigini test eder
      Then sayfayi kapatir
      Examples:
      |yanlisUsername|yanlisPassword|
      |Ali           |AliC123       |
      |Veli          |Veli123       |
      |Yasar         |Yasar123      |
      |Ayse          |Ayse123       |
      |Kadir         |Kadir123      |