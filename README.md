# Example Automated Test with Sauce Labs

### Setting Up a Dev Environment

2. <a href="https://github.com/join" target="_blank">Sign up for a Github account</a>
3. <a href="https://gitpod.io/#https://github.com/saucelabs-training/kickoff2020-testing-intro" target="_blank">Open the Gitpod</a>
4. Sign in to Github & Authorize Gitpod
5. In the File Drop down, select "Auto-Save"
6. Open `sauce_example.rb` file

### Starting and Stopping a Sauce Session

1. <a href="https://saucelabs.com/sign-up" target="_blank">Sign up for a Trial Sauce Labs Account</a>
6. Locate your <a href="https://app.saucelabs.com/user-settings" target="_blank">Sauce Labs Credentials</a>
7. Paste the credentials where it says "yourusername" and "00000000-0000-0000-0000-000000000000"
8. Use the <a href="https://wiki.saucelabs.com/display/DOCS/Platform+Configurator" target="_blank">Platform Configurator</a>
 to create your desired combination
    * W3C
    * PC
    * Windows 10
    * Chrome 78
    * Advanced Configuration --> 1024x768
9. Click the "Ruby" tab at the bottom of the page
10. Copy/Paste the "capabilities" code over the `capabilities` line
11. In the terminal at the bottom, type: `ruby sauce_example.rb` and hit enter
12. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank">Look at the job on the Dashboard</a>

### Adding Sauce Labs Options

1. Look at the <a href="https://docs.saucelabs.com/reference/test-configuration/" target="_blank">Test Configuration Options</a>
2. Scroll down to the very bottom
3. In the far right column of the last row, copy extendedDebugging information
4. In the `sauce_example.rb` file, after the `1024x768`, hit "enter" and paste the extendedDebugging line
5. Uncomment the test and build information
6. Copy those 3 lines; Click right after "true" after extendedDebugging line and paste 
5. Uncomment the code for finding elements and submitting results
6. In the terminal, run: `ruby sauce_example.rb`
7. <a href="https://app.saucelabs.com/dashboard/tests" target="_blank"Look at the job on the Dashboard</a>
