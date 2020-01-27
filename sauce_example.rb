require 'selenium-webdriver'

#
# 1. Find username and access key here: https://app.saucelabs.com/user-settings
#
sauce_username = "yourusername"
sauce_access_key = "00000000-0000-0000-0000-000000000000"

sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.saucelabs.com:443/wd/hub"

#
# 2. Copy and paste capabilities from: https://wiki.saucelabs.com/display/DOCS/Platform+Configurator
#
capabilities


# name: "Testing Sauce Info",
# build: "Kickoff Execution: 1"

@driver = Selenium::WebDriver.for :remote,
                                  url: sauce_url,
                                  desired_capabilities: capabilities

@driver.get "https://www.saucedemo.com/"

# @driver.find_element(id: 'user-name').send_keys('standard_user')
# @driver.find_element(id: 'password').send_keys('secret_sauce')
# @driver.find_element(css: "[type='submit']").click

# actual_result = @driver.current_url == "https://www.saucedemo.com/inventory.html" ? "passed" : "failed"
# @driver.execute_script("sauce:job-result=#{actual_result}")
@driver.quit
