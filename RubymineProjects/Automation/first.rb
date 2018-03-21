
require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path ="D:/ruby/chromedriver_win32/chromedriver.exe"
cap= Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
driver = Selenium::WebDriver.for :chrome,desired_capabilities:cap
=begin
driver.get("http://www.google.com")
driver.find_element(:id,'lst-ib').send_key("hello")
allele = driver.find_elements(:xpath,"//ul[@class='sbsb_b']/li")
puts allele.length()
=begin

for i in allele
  puts i.text

end


allele.each do |e|
  if e.text == "hello google"
    puts "found"
    puts e.text
    e.click
    driver.find_element(:name,'btnK').click
    break
  else
    puts e.text
  end
end
link=driver.find_elements(:tag_name,'a')
puts link.length
=end

driver.get("https://www.ae.com/")
e=driver.find_element(:xpath,"//a[text()='Women']")
p=driver.find_element(:xpath,"//a[text()='press room']")
Selenium::WebDriver::Wait.new(timeout: 30).until {p}
driver.action.move_to(e).perform
puts p.displayed?