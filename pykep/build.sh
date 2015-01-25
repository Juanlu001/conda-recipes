#!/bin/bash

mkdir build
cd build

cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DBUILD_PYKEP:BOOL=ON \
  -DPYTHON_EXECUTABLE=$PYTHON \
  -DPYTHON_LIBRARY=$LIBRARY_PATH/libpython$PY_VER.so \
  -DPYTHON_INCLUDE_DIR=$INCLUDE_PATH/python$PY_VER \
  -DPYTHON_MODULES_PATH=$SP_DIR \
  -DBOOST_ROOT=$PREFIX \
  -DBoost_NO_SYSTEM_PATHS:BOOL=ON
make
make install
