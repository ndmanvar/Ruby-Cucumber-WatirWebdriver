JUNIT_DIR?=junit_reports

run_all_in_parallel:
	make -j test_XP_chrome_43 test_Windows7_firefox_33 test_OSX10.10_safari_8

test_XP_chrome_43:
	platform=XP browserName=chrome version=43 name=test_XP_chrome_43 \
		JUNIT_DIR=junit_reports/test_XP_chrome_43 \
		make run_cuke_tests

test_OSX10.10_safari_8:
	platform="OS X 10.10" browserName=safari version=8 name=test_OSX10.10_safari_8 \
		JUNIT_DIR=junit_reports/test_OSX10.10_safari_8 \
		make run_cuke_tests

test_Windows7_firefox_33:
	platform="Windows 7" browserName=firefox version=33 name=test_Windows7_firefox_33 \
		JUNIT_DIR=junit_reports/test_Windows7_firefox_33 \
		make run_cuke_tests

run_cuke_tests:
	-rm -rf $(JUNIT_DIR)
	cucumber features