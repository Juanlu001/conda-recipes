#!/bin/bash

mkdir build
cd build
cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
  -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH
make install
