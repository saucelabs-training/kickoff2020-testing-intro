require 'selenium-webdriver'

# 1. Find username and access key here: https://app.saucelabs.com/user-settings
sauce_username = "<SAUCE_USERNAME>"
sauce_access_key = "<SAUCE_ACCESS_KEY>"
sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.saucelabs.com:443/wd/hub"

# This can stay empty right now
sauce_options = {}

# 2. Copy and paste capabilities from: https://wiki.saucelabs.com/display/DOCS/Platform+Configurator
capabilities = {}

@driver = Selenium::WebDriver.for :remote,
                                  url: sauce_url,
                                  desired_capabilities: capabilities

@driver.quit
