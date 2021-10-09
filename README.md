# oci_cli
## Description
oci_cli is a dockerfile to create cli environment for Oracle Cloud Infrastructure on Docker.
Docker images are available [here](https://hub.docker.com/r/nnaka2992/oci_cli)

## Usage
### Linux
```
# pull docker image
docker pull nnaka2992/oci_cli:latest

# download docker run shell script
mkdir -p oci_cli
cd oci_cli
curl -O https://raw.githubusercontent.com/nnaka2992/oci_cli/main/oci.sh
chmod +x oci.sh

# set alias to shell script
alias oci=`pwd`/oci.sh

# define directory to store oci config
OCI_CONFIG_DIR=`pwd`/oci

# use oci cli
oci session authenticate
```

### Windows
```
# pull docker image
docker pull nnaka2992/oci_cli:latest

# download docker run bat file
mkdir oci_cli 2>nul
cd oci_cli
curl -O https://raw.githubusercontent.com/nnaka2992/oci_cli/main/oci.bat

# export path
set PATH=%PATH%;%cd%

# define directory to store oci config
set OCI_CONFIG_DIR=%cd%/oci

# use oci cli
oci session authenticate
```
