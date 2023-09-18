cd /home/ns-3_c-v2x
cd /home/ns-3_c-v2x/src/build/
cd /home/ns-3_c-v2x/src
mkdir coverage
cd /home/ns-3_c-v2x/
gcovr --sonarqube src/coverage/coverage.xml -s -f src/ -r .