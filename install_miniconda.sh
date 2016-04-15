wget -c http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh

bash Miniconda-latest-Linux-x86_64.sh -b -p ~/miniconda

~/miniconda/bin/conda install -y numpy scipy pandas scikit-learn jupyter matplotlib

~/miniconda/bin/pip install xgboost 

cd ~/miniconda/lib/python2.7/site-packages/xgboost
./build-python.sh
