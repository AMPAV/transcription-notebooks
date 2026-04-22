# transcription-notebooks
A POC set of notebooks to do transcription things using the AMPAV POC 
tools

## Installing Python 3.12
AMPAV is tested with Python 3.12, but it may work with newer versions.

### Linux
Installation varies depending on distribution

#### RPM-based distributions

| Version       | Package    |
|---------------|------------|
| Fedora 43, 44 | python3.12 |
| RHEL 8, 9     | python3.12 |
| RHEL 10       | python3    |

Install using `yum` or `dnf` as appropriate

#### DEB-based distributions

TBD


### Windows

Download the installer from https://www.python.org/downloads/latest/python3.12/



### Mac

TBD

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
should open a web browser connected to it.  Open the 01-Install.ipnb notebook

### Linux / Mac
```
. .venv/bin/activate
jupyter lab
```

### Windows
TBD


