package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.AmazonPage;
import utilities.ConfigReader;
import utilities.Driver;

public class AmazonStepdefinitions {
    AmazonPage amazonPage=new AmazonPage();

    @Given("kullanici amazon anasayfaya gider")
    public void kullanici_amazon_anasayfaya_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("amazonUrl"));
    }

    @Then("amazon arama kutusuna nutella yazip aratir")
    public void amazon_arama_kutusuna_nutella_yazip_aratir() {
        amazonPage.amazonAramaKutusu.sendKeys("nutella" + Keys.ENTER);
    }

    @Then("arama sonuclarinin nutella icerdigini test eder")
    public void arama_sonuclarinin_nutella_icerdigini_test_eder() {
        String actualAramaSnoucu=amazonPage.aramaSonucuElementi.getText();
        String expectedKelime="nutella";

        Assert.assertTrue(actualAramaSnoucu.contains(expectedKelime));
    }

    @Then("sayfayi kapatir")
    public void sayfayi_kapatir() {
        Driver.closeDriver();
    }
}
