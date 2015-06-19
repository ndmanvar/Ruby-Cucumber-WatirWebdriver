run_all_in_parallel:
	make -j test_XP_chrome_43 test_Windows_7_firefox_33 test_OSX10.10_safari_8

test_XP_chrome_43:
	platform=XP browserName=chrome version=43 name=test_XP_chrome_43 parallel_cucumber features

test_OSX10_10_safari_8:
	platform="OS X 10.10" browserName=safari version=8 name=test_OSX10_10_safari_8 parallel_cucumber features

test_Windows_7_firefox_33:
	platform="Windows 7" browserName=firefox version=33 name=test_Windows_7_firefox_33 parallel_cucumber features
