venv=~/Photon/dl/courseradl
bin=$venv/bin/courseradl
mkdir -p $venv
cd $venv
if [ ! -d $venv/bin ];then
	python3 -m venv $venv
	echo "Making virtual environment"
fi
if [ ! -f $bin ];then
	$venv/bin/pip install coursera-dl
	echo "Installed coursera-dl"
fi
bash
