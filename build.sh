# set -e

# COVERAGE_FLAGS="-g --coverage -fprofile-arcs -ftest-coverage"

# # make install for these subdirectories
# MAKE_INSTALL_DIRS=(
#     "src"
#     "utils"

# )

# # only make for these subdirectories
# MAKE_ONLY_DIRS=(
#     "src"
# )

# for DIR in "${MAKE_INSTALL_DIRS[@]}" "${MAKE_ONLY_DIRS[@]}"; do
#     mkdir /home/ns3_c-v2x/"$DIR"/build
#     cd /home/ns3_c-v2x/"$DIR"/build
#     cmake -DCMAKE_CXX_FLAGS="${COVERAGE_FLAGS}" -DCMAKE_C_FLAGS="${COVERAGE_FLAGS}" -DCMAKE_BUILD_TYPE="Debug" ..
#     make -j
#     for MAKE_INSTALL_DIR in "${MAKE_INSTALL_DIRS[@]}"; do
#         if [ "$DIR" == "$MAKE_INSTALL_DIR" ]; then
#             make -j install
#         fi
#     done
# done

#!/bin/bash
#  Copyright (C) 2018-2020 LEIDOS.
# 
#  Licensed under the Apache License, Version 2.0 (the "License"); you may not
#  use this file except in compliance with the License. You may obtain a copy of
#  the License at
# 
#  http://www.apache.org/licenses/LICENSE-2.0
# 
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#  License for the specific language governing permissions and limitations under
#  the License.

# script executes all kafka_clients and scheduling service build and coverage steps so that they can be singularly
# wrapped by the sonarcloud build-wrapper
set -e

mkdir build
cd build
cmake ..
cmake --build .
make 
sudo make install 

ctest --output-on-failure