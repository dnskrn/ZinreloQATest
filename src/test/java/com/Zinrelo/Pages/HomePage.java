package com.Zinrelo.Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class HomePage extends BasePage {

	public HomePage(WebDriver driver) {
		super(driver);
		//LoginPage LG= LoginPage.;

	}

	private By home_tab = By.xpath("//a[@id='home_tab']");
	private By customers_tab = By.xpath("//a[@id='customers_tab']");
	private By program_settings_tab = By.xpath("//a[@id='program_settings_tab']");
	private By LogOut = By.linkText("Logout");
	private By add_new_member = By.xpath("//i[@id='add_new_member']");

	public WebElement getAdd_new_member() {
		WaitForElementPresence(add_new_member);
		return getElement(add_new_member);
	}

	public WebElement getLogOut() {
		WaitForElementPresence(LogOut);
		return getElement(LogOut);
	}

	public WebElement getHome_tab() {
		WaitForElementPresence(home_tab);
		return getElement(home_tab);
	}

	public WebElement getCustomers_tab() {
		WaitForElementPresence(customers_tab);
		return getElement(customers_tab);
	}

	public WebElement getProgram_settings_tab() 
	{
		WaitForElementPresence(program_settings_tab);
		return getElement(program_settings_tab);
	}

}
