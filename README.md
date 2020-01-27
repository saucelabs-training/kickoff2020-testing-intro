# Example Automated Test with Sauce Labs

### Setting Up a Dev Environment

2. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
3. <a href="https://gitpod.io/#https://github.com/saucelabs-training/kickoff2020-testing-intro" target="_blank">Open the Gitpod</a>
4. Sign in to Github & Authorize Gitpod
5. In the File Drop down, select "Auto-Save"
6. Open `sauce_example.rb` file

### Starting and Stopping a Sauce Session

1. If you don't already have a Sauce Labs Account, 
<a href="https://saucelabs.com/sign-up" target="_blank">Sign up for a Trial Sauce Labs Account</a>
6. Locate your <a href="https://app.saucelabs.com/user-settings" target="_blank">Sauce Labs Credentials</a>
7. Paste the credentials where it says "yourusername" and "00000000-0000-0000-0000-000000000000"
8. Use the <a href="https://wiki.saucelabs.com/display/DOCS/Platform+Configurator" target="_blank">Platform Configurator</a>
to create your desired combination (for example select the following)
    * W3C
    * PC
    * Windows 10
    * Chrome 78
    * Advanced Configuration --> 1024x768
9. At the bottom of the Platform Configurator page, click the "Ruby" tab to see the resulting code
10. Copy/Paste the "capabilities" code over the `capabilities` line in your Gitpod environment
11. In the terminal at the bottom of the Gitpod environment, type: `ruby sauce_example.rb` and hit enter
12. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank">Look at the Dashboard to see the job running</a>

### Adding Sauce Labs Options

1. Go to the <a href="https://docs.saucelabs.com/reference/test-configuration/" target="_blank">Test Configuration Options page</a>
2. Scroll down to the very bottom
3. In the far right column of the last row, copy the `"extendedDebugging": true` information
4. In Gitpod, after the `1024x768,`, hit "enter" and paste the extended debugging text
5. type a comma after the extended debugging line and hit enter
6. Uncomment the name and build lines of code by deleting the pound (`#`) sign at the beginning
7. Copy those 2 lines; and paste in the capabilities code above.
8. Uncomment the rest of the code at the bottom for finding elements and submitting results
9. In the terminal, run: `ruby sauce_example.rb`
10. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank">Look at the Dashboard to see the job running</a>
