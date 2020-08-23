package com.Zinrelo.Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class LoginPage extends BasePage {

	public LoginPage(WebDriver driver) {
		super(driver);
		
	}
	
	private By Email=By.xpath("//input[@id='id_email']");
	private By Password = By.xpath("//input[@id='id_password']");
	private By LogiButton= By.xpath("//button[@id='id_login_button']");
	
	public WebElement getEmail() {
		WaitForElementPresence(Email);
		return getElement(Email);
	}
	
	public WebElement getPassword() {
		WaitForElementPresence(Password);
		return getElement(Password);
	}
	
	public WebElement getLogiButton() {
		WaitForElementPresence(LogiButton);
		return getElement(LogiButton);
	}
	
	public  HomePage LoginSuccess() {
		return getInstance(HomePage.class);
	}
	

}
