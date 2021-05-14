﻿Feature: BBC Example Web Tests:

@web
Scenario: Check i can access my local News
	Given i navigate to "https://www.bbc.co.uk/news"
	When i click menu "Scotland"
	And i click menu "Edinburgh, Fife & East"
	Then i see stories for "Edinburgh, Fife & East Scotland"

@web
Scenario: Check Sports F1
	Given i navigate to "https://www.bbc.co.uk/sport"
	When i click menu "Formula 1"
	When i click menu "Standings"
	Then i see current formula 1 driver table

@web
Scenario: Check My Local Weather
	Given i navigate to "https://www.bbc.co.uk/weather"
	When i input the location "Dunfermline"
	And click search
	Then i see current weather for "Dunfermline"

@web @Fail
Scenario: XFail Check My Local Weather
	Given i navigate to "https://www.bbc.co.uk/weather"
	When i input the location "Dunfermline"
	And click search
	Then i see current weather for "Edinburgh"

@web
Scenario: Check The Tv Guide
	Given i navigate to "https://www.bbc.co.uk/iplayer"
	When i click menu "TV Guide"
	When i click menu "bbc two"
	When i click tv guide
	And i click channel "bbc two"
	Then i see todays Tv Guide