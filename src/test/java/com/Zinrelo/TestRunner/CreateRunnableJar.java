package com.Zinrelo.TestRunner;

import org.junit.internal.TextListener;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;


public class CreateRunnableJar {
	static Result result;
	public static void main(String[] args) {
		JUnitCore junit = new JUnitCore();
		junit.addListener(new TextListener(System.out));
		result= junit.run(JunitRunner.class);
		//result= junit.run(ReRunner.class);

	}

}
