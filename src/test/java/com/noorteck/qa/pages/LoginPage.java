package com.noorteck.qa.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.noorteck.qa.utils.CommonUI;
import com.noorteck.qa.utils.Constants;

public class LoginPage extends CommonElementPage {

	@FindBy(id = "txtUsername")
	WebElement userNameField;

	@FindBy(id = "txtPassword")
	WebElement passwordField;

	@FindBy(name = "Submit")
	WebElement loginButton;

	public LoginPage() {
		PageFactory.initElements(driver, this);
	}

	public void enter(String element, String value) {
		switch (element) {
		case "login.username":
			enter(userNameField, value);
			break;
		case "login.password":
			enter(passwordField, value);
			break;

		}
	}

	public void click(String element) {

		switch (element) {
		case "login.loginButton":
			click(loginButton);
			break;
		}

	}

}
