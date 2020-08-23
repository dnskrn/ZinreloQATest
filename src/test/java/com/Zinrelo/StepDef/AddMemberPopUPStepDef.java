package com.Zinrelo.StepDef;

import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.testng.Assert;

import com.Zinrelo.Pages.AddMemberPopUP;
import com.Zinrelo.Pages.MembersTabPage;
import com.Zinrelo.TestBase.TestBaseZinrelo;

import cucumber.api.DataTable;
import cucumber.api.Scenario;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class AddMemberPopUPStepDef extends TestBaseZinrelo {
	private final static Logger LOGGER = Logger.getLogger("log4j.properties");
	WebElement el, el1;
	String NewMember, email;
	private Scenario sc;

	@When("^I Enter Email Address as \"([^\"]*)\" on Add Member POP-UP$")
	public void i_Enter_Email_Address_as_on_Add_Member_POP_UP(String Email) throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getUser_email();
		el.clear();
		email = Email;
				el.sendKeys(email);
	}

	@When("^I Enter First Name as \"([^\"]*)\" on Add Member POP-UP$")
	public void i_Enter_First_Name_as_on_Add_Member_POP_UP(String arg1) throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getFirst_name();
		el.clear();
		el.sendKeys(arg1);

	}

	@When("^I Enter Last Name as \"([^\"]*)\" on Add Member POP-UP$")
	public void i_Enter_Last_Name_as_on_Add_Member_POP_UP(String arg1) throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getLast_name();
		el.clear();
		el.sendKeys(arg1);

	}

	@When("^I Enter Member ID as \"([^\"]*)\" on Add Member POP-UP$")
	public void i_Enter_Member_ID_as_on_Add_Member_POP_UP(String arg1) throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getMerchant_user_id();
		el.clear();
		el.sendKeys(arg1);

	}

	@When("^I Click on ADD Button on Add Member POP-UP$")
	public void i_Click_on_ADD_Button_on_Add_Member_POP_UP() throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getEnroll_user_proceed();
		el.click();

	}

	@Then("^I Verify the The Error Message as \"([^\"]*)\" on Add Member POP-UP$")
	public void i_Verify_the_The_Error_Message_as_on_Add_Member_POP_UP(String arg1) throws Throwable {
		//Thread.sleep(1500);
		el = page.getInstance(AddMemberPopUP.class).getEnroll_alert_box();
		Assert.assertEquals(el.getText(), Zinreloprop.getProperty(arg1));

	}

	@Then("^I Click on Cross Button to close the POP-UP$")
	public void i_Click_on_Cross_Button_to_close_the_POP_UP() throws Throwable {
		//Thread.sleep(2000);
		GBObj.CM.TakeScreenShot(driver);
		el = page.getInstance(AddMemberPopUP.class).getModal_close();

		el.click();
	}

	@When("^I verify that the Member has been enrolled successfully on Add Member POP-UP$")
	public void i_verify_that_the_Member_has_been_enrolled_successfully_on_Add_Member_POP_UP() throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getEnrolled_Success();
		Assert.assertTrue(el.isDisplayed());
		
	}

	@When("^I Enter the Email ID in the search Box to Search the user on Member Tab$")
	public void i_Enter_the_Email_ID_in_the_search_Box_to_Search_the_user_on_Member_Tab() throws Throwable {
		el = page.getInstance(MembersTabPage.class).getSearchBox();
		el.sendKeys(email);

	}

	@When("^I Click on Search buttom on the search box on Member Tab$")
	public void i_Click_on_Search_buttom_on_the_search_box_on_Member_Tab() throws Throwable {
		el = page.getInstance(MembersTabPage.class).getSearchButton();
		el.click();
	}

	@When("^I Check the the CheckBox Against the Newly Created Memeber on Member Tab$")
	public void i_Check_the_the_CheckBox_Against_the_Newly_Created_Memeber_on_Member_Tab() throws Throwable {
		el = page.getInstance(MembersTabPage.class).getAll_users();
		el.click();
	}

	@When("^I Select the \"([^\"]*)\" option fromt the Action Dropdown on Member Tab$")
	public void i_Select_the_option_fromt_the_Action_Dropdown_on_Member_Tab(String arg1) throws Throwable {
		el = page.getInstance(MembersTabPage.class).getUser_Action();
		el.click();

		driver.findElement(By.xpath("//li[text()='" + arg1 + "']")).click();
	}

	@When("^I Click on the Confirm Button to delete the User on Delete POP-UP$")
	public void i_Click_on_the_Confirm_Button_to_delete_the_User_on_Delete_POP_UP() throws Throwable {
		el = page.getInstance(MembersTabPage.class).getConfirm_action();
		el.click();
		GBObj.CM.TakeScreenShot(driver);
	}

	@When("^I Click on OK Button to close the POP-UP$")
	public void i_Click_on_OK_Button_to_close_the_POP_UP() throws Throwable {
		el = page.getInstance(AddMemberPopUP.class).getEnroll_user_success();
		el.click();
	}

	@When("^I Enter Email Address as invalid on Add Member POP-UP$")
	public void i_Enter_Email_Address_as_invalid_on_Add_Member_POP_UP(DataTable arg1) throws Throwable {
		el1 = page.getInstance(AddMemberPopUP.class).getUser_email();
		List<List<String>> li = arg1.raw();
		for (int i = 0; i < li.size(); i++) {
			el1.sendKeys(li.get(i).get(0));
			i_Click_on_ADD_Button_on_Add_Member_POP_UP();
			i_Verify_the_The_Error_Message_as_on_Add_Member_POP_UP("Invalid_Email_ID");
			el1.clear();
		}
	}

	@When("^I Enter the \"([^\"]*)\" in the search Box to Search the user on Member Tab$")
	public void i_Enter_the_in_the_search_Box_to_Search_the_user_on_Member_Tab(String arg1) throws Throwable {
		el = page.getInstance(MembersTabPage.class).getSearchBox();
		el.clear();
		el.sendKeys(arg1);
	}

	@When("^I Verify that User is \"([^\"]*)\"$")
	public void i_Verify_that_User_is(String arg1) throws Throwable {
		Thread.sleep(2000);
		sc = null;
		if (arg1.equals("Not visible")) {
			if (driver.findElements(By.xpath("//a[@class='profile_link']")).size() != 0) {
				LOGGER.info("Element is Present");
				sc.isFailed();
			} else {
				LOGGER.info("Element is Absent");
			}

		} else if (arg1.equals("visible")) {
			if (driver.findElements(By.xpath("//a[@class='profile_link']")).size() != 0) {
				LOGGER.info("Element is Present");
			} else {
				LOGGER.info("Element is Absent");
				sc.isFailed();
			}
		}

	}
	@When("^I Click on Profile Link$")
	public void i_Click_on_Profile_Link() throws Throwable {
		el = page.getInstance(MembersTabPage.class).getProfile_Link();
		el.click();
	}

	@When("^I Click on the Confirm Button to Unblock the User on Profile page$")
	public void i_Click_on_the_Confirm_Button_to_Unblock_the_User_on_Profile_page() throws Throwable {
		//Thread.sleep(5000);
		el = page.getInstance(MembersTabPage.class).getProfile_confirm();
		
		GBObj.JS.clickElementByJS(el, driver);
		
		//el.click();
	}
	@When("^I Select the \"([^\"]*)\" option fromt the Action Dropdown on Profile Page$")
	public void i_Select_the_option_fromt_the_Action_Dropdown_on_Profile_Page(String arg1) throws Throwable {
		//Thread.sleep(1500);
		el = page.getInstance(MembersTabPage.class).getProfile_actions();
		el.click();
		//Thread.sleep(1500);
		driver.findElement(By.xpath("//li[text()='" + arg1 + "']")).click();
	}


	@When("^I Enter the SearchBy in the search Box to Search the user on Member Tab$")
	public void i_Enter_the_SearchBy_in_the_search_Box_to_Search_the_user_on_Member_Tab(DataTable arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    // For automatic transformation, change DataTable to one of
	    // List<YourType>, List<List<E>>, List<Map<K,V>> or Map<K,V>.
	    // E,K,V must be a scalar (String, Integer, Date, enum etc)
		
		el1 = page.getInstance(MembersTabPage.class).getSearchBox();
		List<List<String>> li = arg1.raw();
		for (int i = 0; i < li.size(); i++) {
			el1.sendKeys(li.get(i).get(0));
			el = page.getInstance(MembersTabPage.class).getSearchButton();
			el.click();
			el = page.getInstance(MembersTabPage.class).getProfile_Link();
			page.wait.until(ExpectedConditions.visibilityOf(el));
			if (driver.findElements(By.xpath("//a[@class='profile_link']")).size() != 0) {
				LOGGER.info("Profile is Present");
				//sc.isFailed();
			} else {
				LOGGER.info("Profile is Absent");
			}
			//Thread.sleep(1000);
			el1.clear();
			//Thread.sleep(1000);
			//page.wait.until(ExpectedConditions.invisibilityOfElementWithText((By) el1, li.get(i).get(0)));
		}
	}
}
