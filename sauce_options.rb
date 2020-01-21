require 'selenium-webdriver'

test_name = "Testing Sauce Info"
build_name = "Kickoff Execution: 1"

# 1. Copy username & access key from `open_browser.rb`
sauce_username = "<SAUCE_USERNAME>"
sauce_access_key = "<SAUCE_ACCESS_KEY>"
sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.saucelabs.com:443/wd/hub"

# 2. Add desired values from https://docs.saucelabs.com/reference/test-configuration
sauce_options = {}

# 3. Copy capabilities from `open_browser.rb`
capabilities = {}

@driver = Selenium::WebDriver.for :remote,
                                  url: sauce_url,
                                  desired_capabilities: capabilities

# To see what this does, go to: https://app.saucelabs.com/dashboard/tests
@driver.get "https://www.saucedemo.com/"
@driver.execute_script("sauce:job-result=passed")
@driver.quit
