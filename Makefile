JUNIT_DIR?=junit_reports

run_all_in_parallel:
	make -j test_google_nexus_7 test_ios_8.3

test_google_nexus_7:
	platform='' browserName=android deviceName="Google Nexus 7 HD Emulator"\
		JUNIT_DIR=junit_reports/test_google_nexus_7 \
		make parallel_cucumber

test_ios_8.4:
	platform='OS X 10.10' version='8.4' browserName=iPhone deviceName="iPhone Simulator"\
		JUNIT_DIR=junit_reports/test_ios_8.4 \
		make parallel_cucumber

parallel_cucumber:
	-rm -rf $(JUNIT_DIR)
	parallel_cucumber features -o "--format junit --out $(JUNIT_DIR) --format pretty" -n 20