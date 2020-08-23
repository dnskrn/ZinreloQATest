package com.Zinrelo.Hooks;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.BasicConfigurator;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import com.Zinrelo.Pages.BasePage;
import com.Zinrelo.TestBase.TestBaseZinrelo;
import com.Zinrelo.Utility.WebDriverListener;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

public class Hooks extends TestBaseZinrelo {
	@Before
	public void InitializeBrowser(Scenario Scenario) {

		Browser = prop.getProperty("Browser");

		String OS = System.getProperty("os.name").substring(0, 3);

		System.setProperty(prop.getProperty(Browser + "_Property"),
				System.getProperty("user.dir") + "/Drivers/" + "/" + OS + "/" + Browser + "driver.exe");

		if (Browser.contentEquals("chrome"))
			driver = new ChromeDriver();
		else if (Browser.contentEquals("gecko")) {
			driver = new FirefoxDriver();
		}
		e_driver = new EventFiringWebDriver(driver);
		eventListener = new WebDriverListener();
		e_driver.register(eventListener);
		driver = e_driver;

		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		page = new BasePage(driver);
		BasicConfigurator.configure();

	}

	@After
	public void TearDown(Scenario Scenario) throws InterruptedException {
		BasicConfigurator.resetConfiguration();
		if (Scenario.getStatus().equals("failed")) {
			try {
				GBObj.CM.TakeScreenShot(driver);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Thread.sleep(1000);
		driver.quit();
		
	}
}
