mkdir build
cd build

cmake \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCLI11_BUILD_TESTS=OFF \
    -DCLI11_BUILD_EXAMPLES=OFF \
    -DCMAKE_INSTALL_LIBDIR=lib \
    ${CMAKE_ARGS} \
    $SRC_DIR

ninja install
