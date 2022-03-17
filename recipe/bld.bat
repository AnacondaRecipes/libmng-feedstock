md build
cd build

:: Configure
cmake .. -LAH -GNinja                                ^
  %CMAKE_ARGS%                                       ^
  -DBUILD_MAN:bool=off                               ^
  -DBUILD_SHARED_LIBS:bool=on                        ^
  -DBUILD_STATIC_LIBS:bool=off                       ^
  -DCMAKE_BUILD_TYPE=Release                         ^
  -DCMAKE_INSTALL_PREFIX:path=%PREFIX%               ^
  -DMNG_INSTALL_LIB_DIR=lib                          ^
  -DWITH_LCMS2:bool=on

:: Build and install
cmake --build .
cmake --install .
cd ..

move %PREFIX%/share/doc/mng-2.0/README.dll %PREFIX%/share/doc/mng-2.0/README.dll_desc

