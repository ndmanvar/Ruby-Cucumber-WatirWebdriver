begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'watir-webdriver'
require 'page-object'
require 'require_all'

begin
	require_all "#{File.join(File.expand_path(File.dirname(__FILE__)), '..', 'page_objects')}"
rescue
	puts "no page objects found"
end

@browser = nil

Before do | scenario |
	# need to configure env variables for browser
  capabilities_config = {
    :version => "#{ENV['version']}",
    :browserName => "#{ENV['browserName']}",
    :platform => "#{ENV['platform']}",
    :name => "#{scenario.feature.name} - #{scenario.name} - #{ENV['platform']} - #{ENV['browserName']} - #{ENV['version']}"
  }

  url = "http://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:80/wd/hub".strip
  @browser = Watir::Browser.new(:remote, :url => url, :desired_capabilities => capabilities_config)
end

# "after all"
After do | scenario |
  sessionid = @browser.driver.send(:bridge).session_id
  jobname = "#{scenario.feature.name} - #{scenario.name} - #{ENV['platform']} - #{ENV['browserName']} - #{ENV['version']}"
  puts "SauceOnDemandSessionID=#{sessionid} job-name=#{jobname}"

  @browser.close
end
