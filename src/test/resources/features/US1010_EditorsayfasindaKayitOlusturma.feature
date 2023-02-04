
  Feature: US1010 Kullanici Scenario Outline ile Editor sayfasinda kayit olusturur

    Scenario Outline: TC15 Editor sayfasinda birden fazla kayit olusturabilmeli
      When kullanici "editorUrl" anasayfaya gider
      Then new butonuna basar
      And first name kutusuna "<firstName>" yazar
      And last name kutusuna "<lastName>" yazar
      And position kutusuna "<position>" yazar
      And office kutusuna "<office>" yazar
      And extension kutusuna "<extension>" yazar
      And start date kutusuna "<startDate>" yazar
      And salary date kutusuna "<salary>" yazar
      And create tusuna basar
      When kullanici "<firstName>" ile arama yapar
      And 1 saniye bekler
      Then isim bolumunde "<firstName>" oldugunu dogrular
      Then sayfayi kapatir
      Examples:
      |firstName|lastName|position  |office|extension|startDate |salary |
      |Ali      |Tan     |QA        |Ankara|Mamak    |2022-01-01|16000  |
      |Hasan    |Yan     |QA lead   |Ankara|Kizilay  |2021-01-01|15000  |
      |Veli     |Can     |QA lead   |Duzce |Merkez   |2023-01-01|18000  |
      |Kemal    |Zan     |Test lead |Ankara|Sincan   |2020-01-01|12000  |
      |Ali      |Kan     |QA        |Ankara|Ulus     |2021-01-01|14000  |