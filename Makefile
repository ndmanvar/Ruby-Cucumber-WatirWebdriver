JUNIT_DIR?=junit_reports

run_all_in_parallel:
	make -j XP_chrome_43 Windows7_firefox_33 OSX10.10_safari_8 Windows10_internet_explorer_11 Windows8_internet_explorer_10

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

Windows8_internet_explorer_10:
	platform="Windows 8" browserName='internet explorer' version=10 \
		JUNIT_DIR=junit_reports/test_Windows8_internet_explorer_10 \
		make parallel_cucumber

Windows7_internet_explorer_9:
	platform="Windows 7" browserName='internet explorer' version=9 \
		JUNIT_DIR=junit_reports/test_Windows7_internet_explorer_9 \
		make parallel_cucumber

XP_chrome_43:
	platform=XP browserName=chrome version=43 \
		JUNIT_DIR=junit_reports/test_XP_chrome_43 \
		make parallel_cucumber

parallel_cucumber:
	-rm -rf $(JUNIT_DIR)
	bundle exec parallel_cucumber features -o "--format junit --out $(JUNIT_DIR) --format pretty" -n 20