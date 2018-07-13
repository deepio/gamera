#!/bin/sh
set -o errexit # Exit immediately if a command exits with a non-zero status.
set -o nounset # Treat unset variables as an error when substituting.
set -o xtrace # Print commands and their arguments as they are executed.

eval "${MATRIX_EVAL}"
pip install -U pip
pip install pytest docutils pygments

python setup.py build
python setup.py install
