require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
Given("User goes to amazon") do
  @home =Amazon_Page.new
  @home.load
end


When("User serch for {string}") do |string|
  @home =Amazon_Page.new
  p string
end


Then("Amazon should return search result for {string}") do |string|

end