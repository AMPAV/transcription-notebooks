#!/bin/bash
#
# This code should run on Linux, Mac, and WSL.
#
HERE=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $HERE

# create the virtual environment if we need to, otherwise just
# activate it
if [ ! -d .venv ]; then
    python3.12 -mvenv .venv
    source .venv/bin/activate
    pip install jupyterlab
else
    source .venv/bin/activate
fi

jupyter lab
