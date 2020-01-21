require 'selenium-webdriver'

RSpec.configure do |config|
  config.before do |example|
    test_name = example.full_description
    build_name = "Kickoff Execution: #{ENV['SAUCE_START_TIME'] || Time.now.to_i}"

    # 1. Copy username & access key from `sauce_options.rb`
    sauce_username = "<SAUCE_USERNAME>"
    sauce_access_key = "<SAUCE_ACCESS_KEY>"
    sauce_url = "https://" + sauce_username + ":" + sauce_access_key + "@ondemand.saucelabs.com:443/wd/hub"

    # 2. Copy options from `sauce_options.rb`
    sauce_options = {}

    # 2. Copy capabilities info from `sauce_options.rb`
    capabilities = {}

    @driver = Selenium::WebDriver.for :remote,
                                     url: sauce_url,
                                     desired_capabilities: capabilities
  end

  config.after do |example|
    result = example.exception ? "failed" : "passed"
    @driver.execute_script("sauce:job-result=#{result}")
    @driver.quit
  end
end
