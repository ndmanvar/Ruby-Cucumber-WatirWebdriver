JUNIT_DIR?=junit_reports

run_all_in_parallel:
	make -j Windows8_chrome_43 Windows7_firefox_33 OSX10.10_safari_8 Windows10_internet_explorer_11 OSX10.11_safari_8.1

OSX10.10_safari_8:
	platform="OS X 10.10" browserName=safari version=8 \
		JUNIT_DIR=junit_reports/test_OSX10.10_safari_8 \
		make parallel_cucumber

Windows7_firefox_33:
	platform="Windows 7" browserName=firefox version=33 \
		JUNIT_DIR=junit_reports/test_Windows7_firefox_33 \
		make parallel_cucumber

Windows10_internet_explorer_11:
	platform="Windows 10" browserName='internet explorer' version=11 \
		JUNIT_DIR=junit_reports/test_Windows10_internet_explorer_11 \
		make parallel_cucumber

OSX10.11_safari_8.1:
	platform="OS X 10.11" browserName='safari' version='8.1' \
		JUNIT_DIR=junit_reports/OSX10.11_safari_8.1 \
		make parallel_cucumber

Windows7_internet_explorer_9:
	platform="Windows 7" browserName='internet explorer' version=9 \
		JUNIT_DIR=junit_reports/test_Windows7_internet_explorer_9 \
		make parallel_cucumber

Windows8_chrome_43:
	platform='Windows 8' browserName=chrome version=43 \
		JUNIT_DIR=junit_reports/test_Windows8_chrome_43 \
		make parallel_cucumber

parallel_cucumber:
	-rm -rf $(JUNIT_DIR)
	bundle exec parallel_cucumber features -o "--format junit --out $(JUNIT_DIR) --format pretty" -n 20