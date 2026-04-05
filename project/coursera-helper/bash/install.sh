name=coursera-helper
venv=~/photon/$name

bin=$venv/bin/$name

mkdir -p $venv
cd $venv
if [ ! -d $venv/bin ];then
        python3 -m venv $venv
        echo "Making virtual environment"
fi
if [ ! -f $bin ];then
        $venv/bin/pip install $name
        echo "Installed $name"
fi
bash
