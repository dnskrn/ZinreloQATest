package com.Zinrelo.StepDef;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.Zinrelo.Pages.HomePage;
import com.Zinrelo.Pages.LoginPage;
import com.Zinrelo.TestBase.TestBaseZinrelo;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class HomePageStepDef extends TestBaseZinrelo {

	WebElement el;

	@SuppressWarnings("static-access")
	public HomePageStepDef() {
		super();
		//page.getInstance(LoginPage.class).LoginSuccess();
		super.wait = new WebDriverWait(this.driver, 15);
	}

	@Given("^I Click on element Logout Button on HomePage$")
	public void i_Click_on_element_Logout_Button_on_HomePage() throws Throwable {

		el = page.getInstance(HomePage.class).getLogOut();

		el.click();
	}

	@When("^I Click on Members Tab of Home Page$")
	public void i_Click_on_Members_Tab_of_Home_Page() throws Throwable {
		wait.until(ExpectedConditions.elementToBeClickable(page.getInstance(HomePage.class).getCustomers_tab()));
		el = page.getInstance(HomePage.class).getCustomers_tab();
		el.click();
	}

	@When("^I Click on Add New Member Button of Home Page$")
	public void i_Click_on_Add_New_Member_Button_of_Home_Page() throws Throwable {
		el = page.getInstance(HomePage.class).getAdd_new_member();
		el.click();
	}
}
