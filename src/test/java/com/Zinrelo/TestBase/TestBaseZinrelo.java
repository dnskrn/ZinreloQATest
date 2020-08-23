package com.Zinrelo.TestBase;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.apache.log4j.BasicConfigurator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.Zinrelo.GlobalObject.GlobalObject;
import com.Zinrelo.Pages.Pages;
import com.Zinrelo.Utility.WebDriverListener;

public class TestBaseZinrelo {
	
	public static FileInputStream ip;
	public static Properties prop;
	
	public static FileInputStream Zinreloip;
	public static Properties Zinreloprop;

	public static WebDriver driver;
	public static Pages page;
	public WebDriverWait wait;
	public static String Browser;
	public static String ExtentreportConfigPath; 
	public static EventFiringWebDriver e_driver;
	public static WebDriverListener eventListener;
	public static GlobalObject GBObj;

	public TestBaseZinrelo() {

		try {
			ip = new FileInputStream(System.getProperty("user.dir") + "/src/test/resources/config.properties");
			prop = new Properties();
			prop.load(new FileInputStream(System.getProperty("user.dir") + "/src/test/resources/config.properties"));
			
			Zinreloip=new FileInputStream(System.getProperty("user.dir") + "/src/test/resources/Zinrelo.properties");
			Zinreloprop=new Properties();
			Zinreloprop.load(Zinreloip);
			
			GBObj=GlobalObject.getinstance();
			
			ExtentreportConfigPath=System.getProperty("user.dir")+"/src/test/resources/extent-config.xml";
			
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}

}
