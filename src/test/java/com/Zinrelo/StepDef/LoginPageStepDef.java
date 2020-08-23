package com.Zinrelo.StepDef;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.Zinrelo.Pages.LoginPage;
import com.Zinrelo.TestBase.TestBaseZinrelo;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class LoginPageStepDef extends TestBaseZinrelo {

	WebElement el;
	static Logger LOGGER;

	public LoginPageStepDef() {
		LOGGER = Logger.getLogger(LoginPageStepDef.class);
		//BasicConfigurator.configure();
	}

	/*
	 * @Given("^User is on login page in \"([^\"]*)\" Browser$") public void
	 * user_is_on_login_page_in_Browser(String BrowserName) throws Throwable {
	 * 
	 * driver.get(Zinreloprop.getProperty("URL"));
	 * Assert.assertEquals(driver.getTitle(),
	 * Zinreloprop.getProperty("Login_Page_Title"));
	 * 
	 * }
	 * 
	 * @When("^User enters email as \"([^\"]*)\" and password as \"([^\"]*)\"$")
	 * public void user_enters_email_as_and_password_as(String arg1, String arg2)
	 * throws Throwable { el = page.getInstance(LoginPage.class).getEmail();
	 * el.sendKeys(Zinreloprop.getProperty("Email"));
	 * 
	 * el = page.getInstance(LoginPage.class).getPassword();
	 * el.sendKeys(Zinreloprop.getProperty("Password")); }
	 * 
	 * @When("^Clicks on Login Button$") public void clicks_on_Login_Button() throws
	 * Throwable { el = page.getInstance(LoginPage.class).getLogiButton();
	 * el.click();
	 * 
	 * Thread.sleep(3000);
	 * 
	 * }
	 * 
	 * @Then("^User is redirected to WelcomBack Page$") public void
	 * user_is_redirected_to_WelcomBack_Page() throws Throwable {
	 * Assert.assertEquals(driver.getTitle(),
	 * Zinreloprop.getProperty("Home_Page_Title")); }
	 */
	@Then("^Logout The current user$")
	public void logout_The_current_user() throws Throwable {
	    driver.findElement(By.linkText("Logout")).click();
	}
	
	@Given("^I am on the login Page of \"([^\"]*)\"$")
	public void i_am_on_the_login_Page_of(String arg1) throws Throwable {
		driver.get(Zinreloprop.getProperty("URL"));
		
	}

	@Given("^I Verify the Title of \"([^\"]*)\"$")
	public void i_Verify_the_Title_of(String arg1) throws Throwable {
		Assert.assertEquals(driver.getTitle(), Zinreloprop.getProperty(arg1));
		
	}

	@Given("^I Enter the text as \"([^\"]*)\" in text box of Email Id on LoginPage$")
	public void i_Enter_the_text_as_in_text_box_of_Email_Id_on_LoginPage(String arg1) throws Throwable {
		el = page.getInstance(LoginPage.class).getEmail();
		el.sendKeys(Zinreloprop.getProperty("Email"));

		
	}

	@Given("^I Enter the text as \"([^\"]*)\" in text box of Password on LoginPage$")
	public void i_Enter_the_text_as_in_text_box_of_Password_on_LoginPage(String arg1) throws Throwable {
		el = page.getInstance(LoginPage.class).getPassword();
		el.sendKeys(Zinreloprop.getProperty("Password"));
	}

	@Given("^I Click on the Login Button on LoginPage$")
	public void i_Click_on_the_Login_Button_on_LoginPage() throws Throwable {
		el = page.getInstance(LoginPage.class).getLogiButton();
		el.click();
		
	}

	


}
