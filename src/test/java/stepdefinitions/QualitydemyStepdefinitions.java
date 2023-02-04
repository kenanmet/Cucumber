package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.QualitydemyPage;
import utilities.ConfigReader;

public class QualitydemyStepdefinitions {
    QualitydemyPage qualitydemyPage=new QualitydemyPage();

    @Then("ilk sayfa login linkine click yapar")
    public void ilk_sayfa_login_linkine_click_yapar() {
        qualitydemyPage.ilkLoginLinki.click();
    }

    @Then("mail kutusuna {string} yazar")
    public void mail_kutusuna_yazar(String istenenUsername) {
        qualitydemyPage.kullaniciEmailKutusu.sendKeys(ConfigReader.getProperty(istenenUsername));
    }

    @Then("password kutusuna {string} yazar")
    public void password_kutusuna_yazar(String istenenPassword) {
        qualitydemyPage.passwordKutusu.sendKeys(ConfigReader.getProperty(istenenPassword));
    }

    @Then("login butonuna basar")
    public void login_butonuna_basar() {
        qualitydemyPage.loginButonu.click();
    }
    @Then("basarili giris yapildigini test eder")
    public void basarili_giris_yapildigini_test_eder() {
        Assert.assertTrue(qualitydemyPage.basariliGirisCoursesLinki.isDisplayed());
    }

    @And("giris yapilamadigini test eder")
    public void girisYapilamadiginiTestEder() {
        Assert.assertTrue(qualitydemyPage.kullaniciEmailKutusu.isDisplayed());
    }

    @And("mail kutusuna manuel olarak {string} yazar")
    public void mailKutusunaManuelOlarakYazar(String username) {
        qualitydemyPage.kullaniciEmailKutusu.sendKeys(username);
    }

    @And("password kutusuna manuel olarak {string} yazar")
    public void passwordKutusunaManuelOlarakYazar(String password) {
        qualitydemyPage.passwordKutusu.sendKeys(password);
    }

    @Then("kullanici cookieyi kabul eder")
    public void kullaniciCookieyiKabulEder() {
        qualitydemyPage.acceptCookie.click();
    }

    @And("{int} saniye bekler")
    public void saniyeBekler(int saniye) {
        try {
            Thread.sleep(saniye*1000);
        } catch (InterruptedException e) {
        }
    }

}
