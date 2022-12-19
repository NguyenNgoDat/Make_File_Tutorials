#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 --product=<pro_name> --running_device=<dev_name> --android_dir=<path_dir> --modules=<module1><module2>"
   echo  -p "--product: must be specificed"
   echo  -r "--running_device: must be specificed"
   echo  -a "--android_dir: must be specificed"
   echo  -m "--modules:  optional, default is all modules in swut_modules.xml"
   exit 1  # Exit script after printing help
}


for i in "$@"

do

case $i in
    -p=*|--product=*)
    PRODUCT="${i#*=}"
    ;;
    -r=*|--running_device=*)
    RUNNING_DEVICE="${i#*=}"
    ;;
    -a=*|--android_dir=*)
    ANDROID_DIR="${i#*=}"
    ;;
    -m=*|--modules=*)
    MODULE="${i#*=}"
    ;;
    *)
           # unknown option
    ;;
    esac
    done
#check argrument
  if [ -z "$PRODUCT" ] || [ -z "$RUNNING_DEVICE" ] || [ -z "$ANDROID_DIR" ] || [ -z "$MODULE" ]  
#  || [ -z "$ANDROID_DIR" ] || [ -z "$MODULE" ]
    then
    echo "Some or all of the parameters are empty";
    helpFunction    
else
echo PRODUCT = ${PRODUCT}
echo RUNNING DEVICE = ${RUNNING_DEVICE}
echo PATH = ${ANDROID_DIR}
echo MODULES = ${MODULE}
fi

