package com.Zinrelo.Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class MembersTabPage extends BasePage {

	public MembersTabPage(WebDriver driver) {
		super(driver);
		// TODO Auto-generated constructor stub
	}

	private By SearchBox = By.xpath("//input[@placeholder='Search by name, email, phone number, member id']");
	private By SearchButton = By.xpath("//button[@id='search']//i");
	private By all_users = By.xpath("//input[@id='all_users']");
	private By select_user = By.xpath("//input[@class='select_user' and @xpath='1']");
	private By User_Action = By.xpath("//div[@id='user_management_actions']");
	private By confirm_action = By.xpath("//button[@id='confirm_action']");
	private By Profile_Link = By.xpath("//a[@class='profile_link']");
	private By profile_confirm = By.xpath("//button[@id='user_profile_confirm_action']");
	private By profile_actions = By.xpath("//div[@id='user_profile_actions']");

	public WebElement getProfile_actions() {
		WaitForElementPresence(profile_actions);
		return getElement(profile_actions);
	}

	public WebElement getProfile_confirm() {
		WaitForElementPresence(profile_confirm);
		return getElement(profile_confirm);
	}

	public String getProfile_LinkXpath() {
		return Profile_Link.toString();
	}
	
	public WebElement getProfile_Link() {
		WaitForElementPresence(Profile_Link);
		return getElement(Profile_Link);
	}

	public WebElement getSearchBox() {
		WaitForElementPresence(SearchBox);
		return getElement(SearchBox);
	}

	public WebElement getSearchButton() {
		WaitForElementPresence(SearchButton);
		return getElement(SearchButton);
	}

	public WebElement getAll_users() {
		WaitForElementPresence(all_users);
		return getElement(all_users);
	}

	public WebElement getSelect_user() {
		WaitForElementPresence(select_user);
		return getElement(select_user);
	}

	public WebElement getUser_Action() {
		WaitForElementPresence(User_Action);
		return getElement(User_Action);
	}

	public WebElement getConfirm_action() {
		WaitForElementPresence(confirm_action);
		return getElement(confirm_action);
	}

}
