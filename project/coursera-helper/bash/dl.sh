. .lib/var
. .lib/activate.sh

activate

mkdir -p $dl_path/$course

coursera-helper --cauth $CAUTH --path $dl_path/$course $course 

#bash
