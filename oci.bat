@echo off
setlocal EnableDelayedExpansion
if not defined OCI_CONFIG_DIR (
    rem  Set config directory where bat file belogs
    set OCI_CONFIG_DIR="%~dp0oci"
    echo OCI_CONFIG_DIR is unset
    echo Use !OCI_CONFIG_DIR! instead.
    echo;
)
if exist %OCI_CONFIG_DIR%\nul echo exist mkdir %OCI_CONFIG_DIR%

docker run -it ^
       -v %OCI_CONFIG_DIR%:/root/.oci ^
       -e OCI_CONFIG=/root/.oci/config ^
       -p 127.0.0.1:8181:8181 ^
       nnaka2992/oci_cli:latest %*
