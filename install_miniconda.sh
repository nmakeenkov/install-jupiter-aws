mkdir install_miniconda_logs
wget -c http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh >install_miniconda_logs/wget_log.txt 2>install_miniconda_logs/wget_err.txt

echo "wget"

bash Miniconda-latest-Linux-x86_64.sh -b -p ~/miniconda >install_miniconda_logs/install_log.txt 2>install_miniconda_logs/install_err.txt

echo "install"

~/miniconda/bin/conda install -y numpy scipy pandas scikit-learn jupyter matplotlib

~/miniconda/bin/pip install xgboost 

cd ~/miniconda/lib/python2.7/site-packages/xgboost
./build-python.sh
