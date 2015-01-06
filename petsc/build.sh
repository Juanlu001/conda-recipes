#!/bin/bash

export PETSC_CONFIGURE_OPTIONS="--with-blas-lapack-dir=$LIBRARY_PATH --download-amd --download-suitesparse"
$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
