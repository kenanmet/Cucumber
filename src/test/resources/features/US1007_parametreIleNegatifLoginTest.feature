
  Feature: US1007 kullanici yanlis bilgilerle giris yapamaz

    Scenario: TC10 Gecerli kullanici adi ve gecersiz sifre ile negatif login testi
      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And mail kutusuna "qdValidMail" yazar
      And password kutusuna "qdInvalidPassword" yazar
      Then login butonuna basar
      And giris yapilamadigini test eder
      Then sayfayi kapatir

    Scenario: TC11 Gecersiz kullanici adi ve gecerli sifre ile negatif login testi
      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And mail kutusuna "qdInvalidMail" yazar
      And password kutusuna "qdValidPassword" yazar
      Then login butonuna basar
      And giris yapilamadigini test eder
      Then sayfayi kapatir

    Scenario: TC12 Gecersiz kullanici adi ve gecersiz sifre ile negatif login testi
      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And mail kutusuna "qdInvalidMail" yazar
      And password kutusuna "qdInvalidPassword" yazar
      Then login butonuna basar
      And giris yapilamadigini test eder
      Then sayfayi kapatir