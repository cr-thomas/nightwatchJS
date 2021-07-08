Feature: Conduit App Publish Article scenarios	

Background:
    Given user is in the home page
	When user clicks on SignIn link
    And user signs in using crt123@pkglobal.com and Night@2018

	Scenario Outline: User should be able to publish articles
		When the user navigates to New Post page
        And enters <articleTitle>, <articleDescription>, <articleContent>, <articleTags>
		And clicks on Publish Article
		Then the new article should be created with <articleTitle> and <articleContent>

		Examples:
		| articleTitle | articleDescription | articleContent | articleTags |
		| MyTestArticle | current test article | Functional Testing of React JS apps | testing|
		| PeerTestArticle | previous test article | Functional Testing of React JS apps | React |
