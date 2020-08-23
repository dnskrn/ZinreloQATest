package com.Zinrelo.Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class AddMemberPopUP extends BasePage {

	public AddMemberPopUP(WebDriver driver) {
		super(driver);

	}

	private By user_email = By.xpath("//input[@id='user_email']");
	private By first_name = By.xpath("//input[@id='first_name']");
	private By last_name = By.xpath("//input[@id='last_name']");
	private By merchant_user_id = By.xpath("//input[@id='merchant_user_id']");
	private By enroll_user_proceed = By.xpath("//a[@id='enroll_user_proceed']");

	private By enroll_user_success = By.xpath("//a[@id='enroll_user_success']");
	private By modal_close = By.xpath("//button[@id='modal_close']");

	private By enroll_alert_box = By.xpath("//div[@id='enroll_alert_box']//span[@id='alert_msg']");
	private By close_alert = By.xpath("//a[@id='close_alert']");

	private By Enrolled_Success = By.xpath("//span[contains(text(),'has been enrolled successfully')]");

	public WebElement getEnrolled_Success() {
		WaitForElementPresence(Enrolled_Success);
		return getElement(Enrolled_Success);
	}

	public WebElement getUser_email() {
		WaitForElementPresence(user_email);
		return getElement(user_email);
	}

	public WebElement getFirst_name() {
		WaitForElementPresence(first_name);
		return getElement(first_name);
	}

	public WebElement getLast_name() {
		WaitForElementPresence(last_name);
		return getElement(last_name);
	}

	public WebElement getMerchant_user_id() {
		WaitForElementPresence(merchant_user_id);
		return getElement(merchant_user_id);
	}

	public WebElement getEnroll_user_proceed() {
		WaitForElementPresence(enroll_user_proceed);
		return getElement(enroll_user_proceed);
	}

	public WebElement getEnroll_user_success() {
		WaitForElementPresence(enroll_user_success);
		return getElement(enroll_user_success);
	}

	public WebElement getModal_close() {
		WaitForElementPresence(modal_close);
		return getElement(modal_close);
	}

	public WebElement getEnroll_alert_box() {
		WaitForElementPresence(enroll_alert_box);
		return getElement(enroll_alert_box);
	}

	public WebElement getClose_alert() {
		WaitForElementPresence(close_alert);
		return getElement(close_alert);
	}

}
