#!/bin/bash

mkdir build
cd build

cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DENABLE_TESTS:BOOL=ON \
  -DBUILD_PYGMO:BOOL=ON \
  -DPYTHON_EXECUTABLE=$PYTHON \
  -DPYTHON_LIBRARY=$LIBRARY_PATH/libpython$PY_VER.so \
  -DPYTHON_INCLUDE_DIR=$INCLUDE_PATH/python$PY_VER \
  -DBOOST_ROOT=$PREFIX \
  -DBoost_NO_SYSTEM_PATHS:BOOL=ON
make
make install
