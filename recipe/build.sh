#!/usr/bin/bash

mkdir -p build
cd build
cmake ${CMAKE_ARGS} -DWITH_LCMS2:bool=on -DBUILD_MAN:bool=off -DBUILD_SHARED_LIBS:bool=on -DCMAKE_INSTALL_PREFIX:path="$PREFIX" ..
cmake --build . --config Release --target install
cd ..

mv $PREFIX/share/doc/mng-2.0/README.dll $PREFIX/share/doc/mng-2.0/README.dll_desc
mv $PREFIX/lib64 $PREFIX/lib

