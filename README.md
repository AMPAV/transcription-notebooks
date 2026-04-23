# transcription-notebooks
A POC set of notebooks to do transcription things using the AMPAV POC 
tools

## Installing Python 3.12
AMPAV is tested with Python 3.12, but it may work with newer versions.

### Linux
Installation varies depending on distribution.  First, see if it is already
installed by running 

```
python3.12 --version
```

If it says the command isn't found you'll need to install it using one of the
options below.

#### RPM-based distributions

| Version       | Package    | Notes 
|---------------|------------|---------
| Fedora 43, 44 | python3.12 |
| RHEL 8, 9     | python3.12 | Including RockyLinux or AlmaLinux
| RHEL 10       | python3    | Including RockyLinux or AlmaLinux

Install using `yum` or `dnf` as appropriate

#### DEB-based distributions

| Version      | Package    | Notes
|--------------|------------|-------
| Ubuntu 24.04 | python3.12 |


### Windows Native

Download the installer from https://www.python.org/downloads/latest/python3.12/
???

### Windows Subsystem for Linux (WSL)

Open PowerShell in Administrator mode and run 

```
wsl --install 
```

and reboot to complete the install.  After it has finished rebooting open 
PowerShell and run this to install Ubuntu 24.04 and set up an initial user

```
wsl --install Ubuntu-24.04
```

After this starting `wsl` will open a terminal with a shell running in the
Linux VM.  

You can access your Linux files from Windows by accessing the Linux 
share and browsing to `/home/your_username`.  

From Linux, you can access Windows files by accessing `/mnt/c`.  Your
Windows home directory is in `/mnt/c/Users/your_username`


By default Ubuntu 24.04 comes with python 3.12 so there is no need to install
it separately, but you will need to install the python venv package.  Since 
it is running `sudo` you will need to use the Linux password you set up
earlier.

```
sudo apt install -y python3.12-venv
```

From this point forward use the Linux instructions.  Keep in mind that Linux
is case-sensitive so `Python` and `python` are two different things.

NOTE:  If you prefer an RPM-based distribution rather than Ubuntu, replace
`Ubuntu-24.04` with one of the distributions:
* `AlmaLinux-8`, `AlmaLinux-9`, or `AlmaLinux-10`
* `FedoraLinux-43`

and follow the instructions for RPM-based distributions

#### Memory Requirements
This has been tested on a Windows 11 machine with 12GB of RAM.  Make sure the
WSL Virtual Machine has at least 6GB of RAM allocated to it.  You can check this
by running the WSL Settings tool.


### Mac

TBD

## Cloning this repository onto your workstation

### Linux, WSL
You can clone this repository by running:

```
git clone https://github.com/AMPAV/transcription-notebooks.git
```


### Windows

### Mac

(According to AI -- I don't have a Mac to test this on)

Open a terminal and run

```
git --version
```

If git is already installed it should print out the version.  If it isn't
it should open a dialog that will prompt you to install it.  Pressing
the Install button should do the install.  Afterward running the command
above should display the git version number.

Running the `git` command in the Linux, WSL section above should work.



## Starting the Jupyter Lab Environment (Automated)

On Linux, WSL, and Mac you can run the `start_juptyer_lab.sh` script to
set up the environment and start the lab.  From within the 
`transcription-notebooks` directory, run

```
./start_jupyter_lab.sh
```

In most cases it will open a web browser connected to the jupyter lab server
but if it does not, in the logs written while starting up, there should be a
link to a url like:

```
http://localhost:8888/lab?token=<a bunch of digits>
```
Open a browser with the URL (most terminals will allow CTRL-Click to open it)

## Setting up the Jupyter environment
To ensure that the python packages installed by AMPAV do not interfere 
with system or user-installed packages, it's best to create a venv for
the jupyter environment for this repository.  When you are using a python 
virtual environment (venv) the packages are installed in a location specific 
to that environment and they will not interfere with anything in any other
environment.  Additionally, any command line tools that were installed will
be available.

Change directory to the `transcription-notebooks` directory that you cloned 
earlier.

### Linux, Mac, WSL
Create the virtual envrionment, activate it, and install jupyterlab into it.
```
python3.12 -mvenv .venv
. .venv/bin/activate
pip install jupyterlab
```

### Windows
TBD


## Activating the Virtual Environment 

When you Activate the virtual environment it will set up the environment so
the packages and programs that have been set up in that environment become
the defaults.  To activate the environment you must be in the directory
where the .venv directory has been set up

* Linux, Mac, WSL: `. .venv/bin/activate`
* Windows: `.venv/scripts/activate.bat`

And the prompt (at least on Linux) will have `(.venv)` displayed.

You can leave the environment by running:
* Linux, Mac, WSL: `deactivate`
* Windows: ???



## Starting the Jupyter environment
If you are not in the virtual environment, activate it as described above.

You should be able to start the jupyterlab server by running:
```
jupyter lab
```

In most cases it will open a web browser connected to the jupyter lab server
but if it does not, in the logs written while starting up, there should be a
link to a url like:

```
http://localhost:8888/lab?token=<a bunch of digits>
```

Copy that URL and open it in a web browser.  In many terminals using
CTRL+Click will open the link in a browser.

Juptyer lab should be showing the project and you can begin by opening the
01-Install.ipynb notebook.




