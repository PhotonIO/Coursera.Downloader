. .lib/var

install(){
	if [ ! -f $bin ];then
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
	fi
}

backup(){
	bacName=$name.venv.clean.tgz
	backup=$bacDir/$bacName

	if [ ! -f $backup ];then
		cd $photon
		tar cfvz $bacName $name
		cp -r $bacName $bacDir/
	fi
}

main(){
	backup
	bash
}

main
