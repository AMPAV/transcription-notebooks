# transcription-notebooks
A POC set of notebooks to do transcription things using the AMPAV POC 
tools

## Setting up the Jupyter environment
To ensure that the python packages installed by AMPAV do not interfere 
with system or user-installed packages, it's best to create a venv for
the jupyter environment

### Linux
Within this directory create a new virtual environment directory and install
jupyter lab

```
python3.12 -mvenv .venv
. .venv/bin/activate
pip install jupyterlab
```

If python 3.12 isn't installed, it will need to be installed, but that's 
a per-distribution thing so it's TBD

### Windows
TBD

### Mac
TBD

## Starting the Jupyter environment
Within this directory run these commands to start a jupyterlab instance.  It
should open a web browser connected to it

### Linux / Mac
```
. .venv/bin/activate
jupyter lab
```

### Windows
TBD

## Something.
