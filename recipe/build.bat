mkdir build
cd build

cmake %CMAKE_ARGS% ^
	-G "Ninja" ^
	-DCLI11_BUILD_TESTS=OFF ^
	-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
	-DCLI11_BUILD_EXAMPLES=OFF ^
	%SRC_DIR%

ninja install