#!/bin/bash

# Isolate the build.
mkdir -p Build
cd Build || exit 1

# Generate the build files.
cmake .. -G"Ninja" ${CMAKE_ARGS} \
      -DCLI11_BUILD_TESTS=ON \
      -DCLI11_BUILD_EXAMPLES=OFF \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release

# Build and install.
ninja install || exit 1


# Perform tests.
ninja test || exit 1
