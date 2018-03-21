require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'yaml'

BROWSER=ENV['BROWSER']
ENVIRONMENT_TYPE=ENV['ENVIRONMENT_TYPE']
ENV['no_proxy']='127.0.0.1'
Capybara.run_server=false
Capybara.default_driver=:selenium
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
                                   :browser=>:chrome
                                   # :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome (
                                   #     'chromeOptions'=> {
                                   #         'args'=> ["--start-maximized"]
                                   #     }
                                   # )
    )
  end
end