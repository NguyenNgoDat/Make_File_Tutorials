
#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -product=<pro_name> --running_device=<dev_name> --android_dir=<path_dir> --modules=<module1><module2"
   echo  -e "\t-product: must be specificed"
   echo  -e "\t-running_device: must be specificed"
   echo  -e "\t-android_dir: must be specificed"
   echo  -e "\t-modules:  optional, default is all modules in swut_modules.xml"
   exit 1  # Exit script after printing help
}

while getopts "p:d:a:m:" opt
do 
   case "$opt" in
        -p=*|--product=*)
        PRODUCT="${i#*=}";;
    #   p ) pro_name="$OPTARG" ;;
      d ) dev_name="$OPTARG" ;;
      a ) path_dir="$OPTARG" ;;
      m ) module_number="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done


# Print helpFunction in case parameters are empty
if [ -z "$pro_name" ] || [ -z "$dev_name" ] || [ -z "$path_dir" ] || [ -z "$module_number" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$pro_name"
echo "$dev_name"
echo "$path_dir"
echo "$module_number"   