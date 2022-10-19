*** Settings ***
Resource    ./PageObjects/About.robot
Resource    ./PageObjects/LandingPage.robot
Resource    ./PageObjects/NavBar.robot

*** Variables ***


*** Keywords ***
Go To Landing Page
    LandingPage.Navigate To
    LandingPage.Verify Webpage Loaded

Go To "About" Page
    NavBar.Click About Header
    About.Verify Webpage Loaded

Validate "About" Page
    About.Validate Page



