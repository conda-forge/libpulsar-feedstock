cmake %CMAKE_ARGS% -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -DOPENSSL_ROOT_DIR=%LIBRARY_PREFIX% ^
    -DPROTOBUF_USE_DLLS=ON ^
    -DBUILD_STATIC_LIB=OFF ^
    -DCMAKE_CXX_STANDARD=17 ^
    -DBUILD_TESTS=OFF ^
    -DCMAKE_CXX_FLAGS="/DPROTOBUF_USE_DLLS=1 /EHsc /std:c++17" ^
    -GNinja ^
    -B build
if %ERRORLEVEL% neq 0 exit 1

cmake --build build
if %ERRORLEVEL% neq 0 exit 1

cmake --install build
if %ERRORLEVEL% neq 0 exit 1
