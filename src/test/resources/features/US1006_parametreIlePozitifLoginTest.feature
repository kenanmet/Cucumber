
  Feature: US1006 Kullanici configuration dosyasindaki bilgilerle login olabilmeli

    Scenario: TC09 Gecerli kullanici adi ve sifre ile pozitif login testi
      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And mail kutusuna "qdValidMail" yazar
      And password kutusuna "qdValidPassword" yazar
      Then login butonuna basar
      And basarili giris yapildigini test eder
      Then sayfayi kapatir