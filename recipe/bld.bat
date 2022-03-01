:: cmd

:: Isolate the build.
mkdir Build
cd Build
if errorlevel 1 exit 1

:: Generate the build files.
cmake .. -G"Ninja" %CMAKE_ARGS% ^
      -DCLI11_BUILD_TESTS=ON ^
      -DCLI11_BUILD_EXAMPLES=OFF ^
      -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DCMAKE_BUILD_TYPE=Release


:: Build and install.
ninja install
if errorlevel 1 exit 1


:: Perform tests.
ninja test
if errorlevel 1 exit 1

:: Error free exit .
exit 0
