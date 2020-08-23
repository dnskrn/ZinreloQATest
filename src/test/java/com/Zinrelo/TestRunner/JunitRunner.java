package com.Zinrelo.TestRunner;

import java.time.LocalDate;
import java.util.Random;

import org.apache.log4j.BasicConfigurator;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.cucumber.listener.ExtentProperties;
import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = { "." }, 
			glue = { "com.Zinrelo/" }, 
			dryRun = false, strict = true, monochrome = true,// format = {"pretty" },
			plugin = { "json:Json_Report/cucumber.json","com.cucumber.listener.ExtentCucumberFormatter:","rerun:rerun/failed_scenarios.txt" }, 
			tags = {"@ZinreloQaTest"}

)

public class JunitRunner {
	@BeforeClass
	public static void ReportNameSetup() {
		Random random  = new Random();
		ExtentProperties ExtentProp= ExtentProperties.INSTANCE;
		ExtentProp.setReportPath(System.getProperty("user.dir")+"/output/"+LocalDate.now().toString()+random.nextInt()+"Report.html");
	}

	@AfterClass
	public static void writeExtentReport() {

		BasicConfigurator.configure();
		Reporter.loadXMLConfig(System.getProperty("user.dir") + "/src/test/resources/extent-config.xml");
		Reporter.setSystemInfo("User Name", System.getProperty("user.name"));
		Reporter.setSystemInfo("Time Zone", System.getProperty("user.timezone"));
		Reporter.setSystemInfo("Operating System", System.getProperty("os.name"));

	}

}
