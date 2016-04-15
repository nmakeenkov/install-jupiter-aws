~/miniconda/bin/ipython profile create nbserver >create_serv_log.txt 2>create_serv_err.txt

File=~/.ipython/profile_nbserver/ipython_notebook_config.py
printf "\n# Configuration file for ipython-notebook.
c = get_config()
# Notebook config
c.NotebookApp.ip = '*'
c.NotebookApp.password = u\'" >> $File
read line < hash.txt
echo $line\' >> $File
printf "c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888\n" >> $File
