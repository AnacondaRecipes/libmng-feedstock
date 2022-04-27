
mkdir build
cd build
cmake -LAH -GNinja ${CMAKE_ARGS} -DWITH_LCMS2:bool=on -DBUILD_MAN:bool=off -DBUILD_SHARED_LIBS:bool=on -DCMAKE_INSTALL_PREFIX:path="$PREFIX" ..
cmake --build . --config Release --target install
cd ..


