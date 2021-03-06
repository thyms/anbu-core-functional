# type 'make -s list' to see list of targets.

run-app:
	echo 'No application to run for this project'

test-app:
	./gradlew clean test

test-app-ci:
	./gradlew clean test -Dtest.env=func01

setup-project:
	echo 'No configuration to setup for this project'

.PHONY: no_targets__ list
no_targets__:
list:
	sh -c "$(MAKE) -p no_targets__ | awk -F':' '/^[a-zA-Z0-9][^\$$#\/\\t=]*:([^=]|$$)/ {split(\$$1,A,/ /);for(i in A)print A[i]}' | grep -v '__\$$' | sort"
